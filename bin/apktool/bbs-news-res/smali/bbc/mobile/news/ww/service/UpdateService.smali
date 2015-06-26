.class public Lbbc/mobile/news/ww/service/UpdateService;
.super Lbbc/mobile/news/service/UpdateService;
.source "UpdateService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateService:WW"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lbbc/mobile/news/service/UpdateService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootReceived(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 14
    const-string v0, "UpdateService:WW"

    const-string v1, "handle BootReceived"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-class v0, Lbbc/mobile/news/ww/receiver/AlarmReceiverWw;

    invoke-static {p0, v0}, Lbbc/mobile/news/ww/service/UpdateService;->rescheduleUpdateService(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    invoke-super {p0, p1}, Lbbc/mobile/news/service/UpdateService;->onBootReceived(Landroid/content/Intent;)V

    .line 17
    return-void
.end method
