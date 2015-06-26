.class Lbbc/mobile/news/video/VideoFragment$1;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/video/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/video/VideoFragment;


# direct methods
.method constructor <init>(Lbbc/mobile/news/video/VideoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/video/VideoFragment$1;->this$0:Lbbc/mobile/news/video/VideoFragment;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 283
    sget-object v0, Lbbc/mobile/news/video/VideoFragment;->TAG:Ljava/lang/String;

    const-string v1, "Advert failed to load, perhaps its been blocked!"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment$1;->this$0:Lbbc/mobile/news/video/VideoFragment;

    #calls: Lbbc/mobile/news/video/VideoFragment;->playContent()V
    invoke-static {v0}, Lbbc/mobile/news/video/VideoFragment;->access$0(Lbbc/mobile/news/video/VideoFragment;)V

    .line 285
    return-void
.end method
