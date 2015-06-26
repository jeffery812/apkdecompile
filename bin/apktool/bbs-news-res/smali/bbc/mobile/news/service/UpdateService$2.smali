.class Lbbc/mobile/news/service/UpdateService$2;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Lbbc/mobile/news/service/UpdateService$OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/service/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/service/UpdateService;


# direct methods
.method constructor <init>(Lbbc/mobile/news/service/UpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/service/UpdateService$2;->this$0:Lbbc/mobile/news/service/UpdateService;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(II)V
    .locals 3
    .parameter "noOfFeeds"
    .parameter "feedCount"

    .prologue
    .line 381
    const-string v0, "UpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update progress: noOfFeeds:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " feedCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    if-ne p1, p2, :cond_1

    .line 387
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService$2;->this$0:Lbbc/mobile/news/service/UpdateService;

    #getter for: Lbbc/mobile/news/service/UpdateService;->mIsNotificationsEnabled:Z
    invoke-static {v0}, Lbbc/mobile/news/service/UpdateService;->access$0(Lbbc/mobile/news/service/UpdateService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService$2;->this$0:Lbbc/mobile/news/service/UpdateService;

    invoke-static {v0}, Lbbc/mobile/news/service/NotificationFactory;->dispatchUpdateComplete(Landroid/content/Context;)V

    .line 389
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService$2;->this$0:Lbbc/mobile/news/service/UpdateService;

    invoke-virtual {v0}, Lbbc/mobile/news/service/UpdateService;->finishService()V

    .line 391
    :cond_1
    return-void
.end method
