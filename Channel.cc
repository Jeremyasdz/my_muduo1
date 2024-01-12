#include "Channel.h"
#include "EventLoop.h"

#
const int Channel::kNoneEvent = 0;
const int Channel::kReadEvent = EPOLLIN | EPOLLPRI;
const int Channel::kWriteEvent = EPOLLOUT;


Channel::Channel(EventLoop* loop, int fd):
    loop_(loop), fd_(fd), events_(0), revents_(0), index_(-1)
{

}

Channel::~Channel()
{
    
}


void Channel::update(){
    loop_-> UpdateChannel(this);
}

void Channel::HandleEvent(){
    if((revents_ & EPOLLHUP) && !(revents_ & EPOLLIN)){
        if(closecallback_){
            closecallback_();
        }
    }

    if(revents_ & (EPOLLERR)){
        if(errorcallback_){
            errorcallback_();
        }
    }
    if(revents_ & (EPOLLIN | EPOLLPRI)){
        if(readcallback_){
            readcallback_();
        }
    }
    if(revents_ & EPOLLOUT){
        if(writecallback_){
            writecallback_();
        }
    }
}