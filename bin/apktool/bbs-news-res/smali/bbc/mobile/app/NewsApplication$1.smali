.class Lbbc/mobile/app/NewsApplication$1;
.super Ljava/lang/Object;
.source "NewsApplication.java"

# interfaces
.implements Lio/boxcar/push/ui/BXCNotificationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/app/NewsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/app/NewsApplication;


# direct methods
.method constructor <init>(Lbbc/mobile/app/NewsApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/app/NewsApplication$1;->this$0:Lbbc/mobile/app/NewsApplication;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleNotification(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;)V
    .locals 3
    .parameter "context"
    .parameter "bxcNotification"

    .prologue
    .line 119
    const-string v0, "PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NOTIFY: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lbbc/mobile/news/push/PushNotification;

    invoke-direct {v2, p2}, Lbbc/mobile/news/push/PushNotification;-><init>(Lio/boxcar/push/model/BXCNotification;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {p1, p2}, Lbbc/mobile/news/service/NotificationFactory;->dispatchPushNotification(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;)V

    .line 121
    return-void
.end method
