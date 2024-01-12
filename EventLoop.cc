#include  "EventLoop.h"


const int kPollTimeMs = 10000;

EventLoop::EventLoop():looping_(false), quit_(false), threadId_(CurrentThread::tid()), poller_(new EpollPoller(this))
{

}

void EventLoop::loop()
{
    looping_ = true;
    quit_ = false;

    while(!quit_){
        activeChannels_.clear();
        pollreturntime_ = poller_->Poll(kPollTimeMs, &activeChannels_);
        for(Channel* channel : activeChannels_){
            channel->HandleEvent();
        }
    }
    looping_ = false;
}