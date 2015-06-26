.class public Lbbc/mobile/news/receiver/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BBC_Update_Service:BootReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 17
    invoke-static {p1}, Lbbc/mobile/news/util/GlobalSettings;->isUpdatesEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const-class v0, Lbbc/mobile/news/service/UpdateService;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lbbc/mobile/news/service/UpdateService;->createStartIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 20
    :cond_0
    return-void
.end method
