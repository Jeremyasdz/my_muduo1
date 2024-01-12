#pragma once

#include <iostream>
#include <atomic>
#include <memory>

#include "./base/CurrentThread.h"
#include "EpollPoller.h"

class Channel;
class Poller;

using namespace std;

class EventLoop
{
public:
    EventLoop();
    ~EventLoop() = default;

    void loop();
    void quit(){ quit_ = true;}

    bool isInLoopThread() const { return threadId_ == CurrentThread::tid();}
    void UpdateChannel(Channel* channel) { poller_ -> UpdateChannel(channel);}


private:
    using ChannelList = vector<Channel*>;
    atomic <bool> looping_;
    atomic <bool> quit_;
    const pid_t threadId_;

    unique_ptr<Poller> poller_;
    ChannelList activeChannels_;
    Timestamp pollreturntime_;
};