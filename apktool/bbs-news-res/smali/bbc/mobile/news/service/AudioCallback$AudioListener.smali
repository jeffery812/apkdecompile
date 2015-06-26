.class public interface abstract Lbbc/mobile/news/service/AudioCallback$AudioListener;
.super Ljava/lang/Object;
.source "AudioCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/service/AudioCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioListener"
.end annotation


# virtual methods
.method public abstract getArticle()Lbbc/mobile/news/model/Article;
.end method

.method public abstract onBufferingUpdate(Lbbc/mobile/news/model/Article;I)V
.end method

.method public abstract onPause(Lbbc/mobile/news/model/Article;)V
.end method

.method public abstract onPlay(Lbbc/mobile/news/model/Article;)V
.end method

.method public abstract onStop(Lbbc/mobile/news/model/Article;Z)V
.end method
