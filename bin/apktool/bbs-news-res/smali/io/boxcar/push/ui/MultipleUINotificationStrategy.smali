.class public Lio/boxcar/push/ui/MultipleUINotificationStrategy;
.super Lio/boxcar/push/ui/BaseUINotificationStrategy;
.source "MultipleUINotificationStrategy.java"


# instance fields
.field private l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .parameter "icon"
    .parameter "largeIcon"
    .parameter "title"
    .parameter "showBadge"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p5, normalPushActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p6, richPushActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lio/boxcar/push/ui/BaseUINotificationStrategy;-><init>()V

    .line 50
    iput p1, p0, Lio/boxcar/push/ui/MultipleUINotificationStrategy;->a:I

    .line 51
    iput-object p2, p0, Lio/boxcar/push/ui/MultipleUINotificationStrategy;->b:Landroid/graphics/Bitmap;

    .line 52
    iput-object p3, p0, Lio/boxcar/push/ui/MultipleUINotificationStrategy;->d:Ljava/lang/String;

    .line 53
    iput-boolean p4, p0, Lio/boxcar/push/ui/MultipleUINotificationStrategy;->c:Z

    .line 54
    iput-object p5, p0, Lio/boxcar/push/ui/MultipleUINotificationStrategy;->l:Ljava/lang/Class;

    .line 55
    iput-object p6, p0, Lio/boxcar/push/ui/MultipleUINotificationStrategy;->m:Ljava/lang/Class;

    .line 56
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 7
    .parameter "icon"
    .parameter "title"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, normalPushActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p4, richPushActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/boxcar/push/ui/MultipleUINotificationStrategy;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Class;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;)V
    .locals 10
    .parameter "context"
    .parameter "notification"

    .prologue
    .line 70
    invoke-static {p2}, Lio/boxcar/push/ui/MultipleUINotificationStrategy;->a(Lio/boxcar/push/model/BXCNotification;)Ljava/lang/String;

    move-result-object v9

    .line 71
    .local v9, url:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 72
    new-instance v7, Landroid/content/Intent;

    iget-object v1, p0, Lio/boxcar/push/ui/MultipleUINotificationStrategy;->m:Ljava/lang/Class;

    invoke-direct {v7, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v7, notificationIntent:Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v7, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    :goto_0
    const/high16 v1, 0x2400

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    const-string v1, "notification"

    invoke-virtual {v7, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "custom://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionstring"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p2}, Lio/boxcar/push/model/BXCNotification;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, notificationId:I
    const/4 v1, 0x0

    invoke-static {p1, v0, v7, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 95
    .local v6, intent:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, when:J
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 96
    invoke-virtual/range {v1 .. v6}, Lio/boxcar/push/ui/MultipleUINotificationStrategy;->a(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 99
    .local v8, notifyBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 101
    invoke-virtual {v8}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 103
    return-void

    .line 77
    .end local v0           #notificationId:I
    .end local v4           #when:J
    .end local v6           #intent:Landroid/app/PendingIntent;
    .end local v7           #notificationIntent:Landroid/content/Intent;
    .end local v8           #notifyBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_0
    new-instance v7, Landroid/content/Intent;

    iget-object v1, p0, Lio/boxcar/push/ui/MultipleUINotificationStrategy;->l:Ljava/lang/Class;

    invoke-direct {v7, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v7       #notificationIntent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public handleNotification(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;)V
    .locals 0
    .parameter "context"
    .parameter "notification"

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lio/boxcar/push/ui/MultipleUINotificationStrategy;->a(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;)V

    .line 61
    return-void
.end method
