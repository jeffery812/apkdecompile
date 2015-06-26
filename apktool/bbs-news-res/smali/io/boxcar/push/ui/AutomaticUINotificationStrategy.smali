.class public Lio/boxcar/push/ui/AutomaticUINotificationStrategy;
.super Ljava/lang/Object;
.source "AutomaticUINotificationStrategy.java"

# interfaces
.implements Lio/boxcar/push/ui/BXCNotificationStrategy;


# static fields
.field public static final a:[J


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Class;

.field private e:Ljava/lang/Class;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lio/boxcar/push/ui/AutomaticUINotificationStrategy;->a:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xbct 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xbct 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .parameter "icon"
    .parameter "title"
    .parameter "normalPushActivity"
    .parameter "richPushActivity"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/boxcar/push/ui/AutomaticUINotificationStrategy;->f:Z

    .line 52
    iput p1, p0, Lio/boxcar/push/ui/AutomaticUINotificationStrategy;->b:I

    .line 53
    iput-object p2, p0, Lio/boxcar/push/ui/AutomaticUINotificationStrategy;->c:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lio/boxcar/push/ui/AutomaticUINotificationStrategy;->d:Ljava/lang/Class;

    .line 55
    iput-object p4, p0, Lio/boxcar/push/ui/AutomaticUINotificationStrategy;->e:Ljava/lang/Class;

    .line 56
    return-void
.end method


# virtual methods
.method public handleNotification(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;)V
    .locals 9
    .parameter "context"
    .parameter "notification"

    .prologue
    const/4 v7, 0x0

    .line 60
    const-string v0, "BXCF"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "received id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/boxcar/push/model/BXCNotification;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Lio/boxcar/push/BXCFacade;->buildUrl(Lio/boxcar/push/model/BXCNotification;)Ljava/lang/String;
    :try_end_0
    .catch Lio/boxcar/push/BXCException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v1, "BXCF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "received url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lio/boxcar/push/BXCException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v4, Landroid/app/Notification;

    iget v5, p0, Lio/boxcar/push/ui/AutomaticUINotificationStrategy;->b:I

    invoke-virtual {p2}, Lio/boxcar/push/model/BXCNotification;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    :try_start_2
    invoke-virtual {p2}, Lio/boxcar/push/model/BXCNotification;->getBadge()I

    move-result v2

    iput v2, v4, Landroid/app/Notification;->number:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_1

    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lio/boxcar/push/ui/AutomaticUINotificationStrategy;->e:Ljava/lang/Class;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "url"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v1, v2

    :goto_2
    const-string v2, "notification"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p1, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v5, p0, Lio/boxcar/push/ui/AutomaticUINotificationStrategy;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lio/boxcar/push/model/BXCNotification;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v2, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v4, Landroid/app/Notification;->flags:I

    invoke-virtual {p2}, Lio/boxcar/push/model/BXCNotification;->getSound()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v5, 0x800

    invoke-static {p1, v2, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 61
    return-void

    .line 60
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_3
    const-string v2, "BXCF"

    const-string v3, "AutomaticUINotification: Error extracting url from notification"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/boxcar/push/ui/AutomaticUINotificationStrategy;->d:Ljava/lang/Class;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x2400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_3
.end method
