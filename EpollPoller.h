#pragma once

#include <unistd.h>

#include "Poller.h"
#include "./base/Timestamp.h"
#include "EpollPoller.h"

class EpollPoller: public Poller
{
public:
    EpollPoller(EventLoop* loop) ;
    ~EpollPoller() override;

    Timestamp Poll(int timeoutMs, ChannelList* activeChannels) override;
    void UpdateChannel(Channel* channel) override;
    void RemoveChannel(Channel* Channel) override;



private:
    static const int kInitEventListSize = 16;

    void update(int operation, Channel* channel);

    using EpollList = vector<epoll_event>;
    void fillActiveChannels(int nums,ChannelList* activeChannels) const;
    int nums_;
    int epollfd_;
    
    EpollList events_;
};  