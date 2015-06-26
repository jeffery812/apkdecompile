.class Lbbc/mobile/news/video/VideoFragment$4;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/video/VideoFragment;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/video/VideoFragment;

.field private final synthetic val$future:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lbbc/mobile/news/video/VideoFragment;Ljava/util/concurrent/Future;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/video/VideoFragment$4;->this$0:Lbbc/mobile/news/video/VideoFragment;

    iput-object p2, p0, Lbbc/mobile/news/video/VideoFragment$4;->val$future:Ljava/util/concurrent/Future;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment$4;->val$future:Ljava/util/concurrent/Future;

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment$4;->val$future:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0
.end method
