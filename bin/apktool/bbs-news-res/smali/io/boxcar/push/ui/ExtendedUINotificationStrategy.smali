.class public Lio/boxcar/push/ui/ExtendedUINotificationStrategy;
.super Lio/boxcar/push/ui/BaseUINotificationStrategy;
.source "ExtendedUINotificationStrategy.java"


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

.field private n:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .parameter "icon"
    .parameter "largeIcon"
    .parameter "title"
    .parameter "showBadge"
    .parameter
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
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p5, normalPushActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p6, richPushActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p7, multiplePushActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lio/boxcar/push/ui/BaseUINotificationStrategy;-><init>()V

    .line 39
    iput p1, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->a:I

    .line 40
    iput-object p2, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->b:Landroid/graphics/Bitmap;

    .line 41
    iput-object p3, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->d:Ljava/lang/String;

    .line 42
    iput-boolean p4, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->c:Z

    .line 43
    iput-object p5, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->l:Ljava/lang/Class;

    .line 44
    iput-object p6, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->m:Ljava/lang/Class;

    .line 45
    iput-object p7, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->n:Ljava/lang/Class;

    .line 46
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 8
    .parameter "icon"
    .parameter "title"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, normalPushActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p4, richPushActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p5, multiplePushActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 34
    return-void
.end method

.method private static a()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lio/boxcar/push/model/BXCNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lio/boxcar/push/model/BXCNotification;>;"
    const/4 v4, 0x3

    :try_start_0
    invoke-static {v4}, Lio/boxcar/push/BXCFacade;->getLastEvents(I)Ljava/util/List;

    move-result-object v4

    .line 169
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/boxcar/push/model/BXCNotification;

    .line 170
    .local v1, event:Lio/boxcar/push/model/BXCNotification;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lio/boxcar/push/BXCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    .end local v1           #event:Lio/boxcar/push/model/BXCNotification;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Lio/boxcar/push/BXCException;
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lio/boxcar/push/model/BXCNotification;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .restart local v2       #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lio/boxcar/push/model/BXCNotification;>;"
    const-string v4, "BXCF"

    const-string v5, "Error retrieving last events"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v0           #e:Lio/boxcar/push/BXCException;
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 7
    .parameter "context"
    .parameter "notification"
    .parameter "when"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 114
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, notifyBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v2, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 118
    iget v2, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->a:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 120
    iget-object v2, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 123
    :cond_0
    invoke-virtual {v0, p3, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 124
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 126
    iget-boolean v2, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->f:Z

    if-eqz v2, :cond_3

    .line 127
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 128
    iget v2, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->g:I

    iget v3, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->h:I

    iget v4, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->i:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 133
    :goto_0
    iget-boolean v2, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->e:Z

    if-eqz v2, :cond_1

    .line 134
    sget-object v2, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->k:[J

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 139
    :cond_1
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 141
    invoke-virtual {p2}, Lio/boxcar/push/model/BXCNotification;->getSound()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 143
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 145
    .local v1, soundUri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 148
    .end local v1           #soundUri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {v0, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 150
    return-object v0

    .line 130
    :cond_3
    const v2, 0xffffff

    invoke-virtual {v0, v2, v3, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method protected final a(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;)V
    .locals 13
    .parameter "context"
    .parameter "notification"

    .prologue
    .line 53
    invoke-static {p2}, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->a(Lio/boxcar/push/model/BXCNotification;)Ljava/lang/String;

    move-result-object v12

    .line 55
    .local v12, url:Ljava/lang/String;
    invoke-static {}, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    .local v0, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lio/boxcar/push/model/BXCNotification;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 60
    if-eqz v12, :cond_0

    .line 61
    new-instance v10, Landroid/content/Intent;

    iget-object v1, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->m:Ljava/lang/Class;

    invoke-direct {v10, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v10, notificationIntent:Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v10, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    :goto_0
    const-string v1, "notification"

    invoke-virtual {v10, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    :goto_1
    const/high16 v1, 0x2400

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
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

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionstring"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 90
    .local v6, intent:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, when:J
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 91
    invoke-virtual/range {v1 .. v6}, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->a(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 94
    .local v11, notifyBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v8, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v8}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 97
    .local v8, inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;
    iget-object v1, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->d:Ljava/lang/String;

    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/boxcar/push/model/BXCNotification;

    .line 100
    .local v9, n:Lio/boxcar/push/model/BXCNotification;
    invoke-virtual {v9}, Lio/boxcar/push/model/BXCNotification;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_2

    .line 66
    .end local v4           #when:J
    .end local v6           #intent:Landroid/app/PendingIntent;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .end local v9           #n:Lio/boxcar/push/model/BXCNotification;
    .end local v10           #notificationIntent:Landroid/content/Intent;
    .end local v11           #notifyBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_0
    new-instance v10, Landroid/content/Intent;

    iget-object v1, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->l:Ljava/lang/Class;

    invoke-direct {v10, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v10       #notificationIntent:Landroid/content/Intent;
    goto :goto_0

    .line 72
    .end local v10           #notificationIntent:Landroid/content/Intent;
    :cond_1
    new-instance v10, Landroid/content/Intent;

    iget-object v1, p0, Lio/boxcar/push/ui/ExtendedUINotificationStrategy;->n:Ljava/lang/Class;

    invoke-direct {v10, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .restart local v10       #notificationIntent:Landroid/content/Intent;
    const-string v1, "notifications"

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 103
    .restart local v4       #when:J
    .restart local v6       #intent:Landroid/app/PendingIntent;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .restart local v11       #notifyBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_2
    invoke-virtual {v11, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 105
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v11}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 109
    return-void
.end method
