#include <iostream>
#include <string.h>

#include "EpollPoller.h"

const int kNew = -1;
const int kAdded = -1;
const int kDeleted = 2;

EpollPoller::EpollPoller(EventLoop* loop):Poller(loop), 
    epollfd_(epoll_create1(EPOLL_CLOEXEC)), events_(kInitEventListSize)
    {
        if(epollfd_ < 0)
        cout << "epoll create error" << endl;
    }

EpollPoller::~EpollPoller()
{
    close(epollfd_);
}

Timestamp EpollPoller::Poll(int timeoutMs, ChannelList* activeChannels)
{
    Timestamp now(Timestamp::now());
    int nums_ = epoll_wait(epollfd_, &(*events_.begin()), events_.size(), timeoutMs);

    if(nums_ > 0)
    {
        fillActiveChannels(nums_, activeChannels);
    }
    
    else if(nums_ == 0){
        cout << "Time out" << endl;
    }

    else {
        cout << "Epoll wait error" << endl;
    }

    return now;
}

void EpollPoller::fillActiveChannels(int nums, ChannelList* activeChannels) const
{
    for(int i = 0; i < nums; i++){
        Channel* channel = static_cast<Channel*> (events_[i].data.ptr);
        channel->SetRevents(events_[i].events);
        activeChannels->push_back(channel);
    }
}

void EpollPoller::UpdateChannel(Channel *channel)
{
    const int index = channel->Getindex();
    
    if(index == kNew || index == kDeleted)
    {
        if(index == kNew)
        {
            int fd = channel->Getfd();
            channels_[fd] = channel;
        }

        else{

        }
        channel->SetIndex(kAdded);
        update(EPOLL_CTL_ADD, channel);
    }

    else{
        if(channel -> isNoneEvent()){
            update(EPOLL_CTL_DEL, channel);
            channel->SetIndex(kDeleted);
        }
        else{
            update(EPOLL_CTL_MOD, channel);
        }
    }
}

void EpollPoller::RemoveChannel(Channel* channel){
    int fd = channel->Getfd();
    channels_.erase(fd);

    int index = channel->Getindex();
    if(index == kAdded){
        update(EPOLL_CTL_DEL, channel);
    }

    channel->SetIndex(kNew);
}

void EpollPoller::update(int operation, Channel* channel){
    epoll_event event;
    memset(&event, 0, sizeof(event));

    int fd = channel->Getfd();
    event.events = channel->Getevents();
    event.data.fd = fd;
    event.data.ptr = channel;

    if(epoll_ctl(epollfd_, operation, fd, &event) < 0){
        cout << "epoll ctl error" << endl;
    }
}