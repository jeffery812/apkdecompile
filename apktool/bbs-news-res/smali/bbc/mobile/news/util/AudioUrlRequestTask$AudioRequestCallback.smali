.class public interface abstract Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;
.super Ljava/lang/Object;
.source "AudioUrlRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/util/AudioUrlRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioRequestCallback"
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract onAudioUrlFail(Lbbc/mobile/news/model/Article;)V
.end method

.method public abstract onAudioUrlSuccess(Lbbc/mobile/news/model/Article;)V
.end method
