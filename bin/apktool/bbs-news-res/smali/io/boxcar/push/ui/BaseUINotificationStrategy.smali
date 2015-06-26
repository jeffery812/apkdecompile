.class public abstract Lio/boxcar/push/ui/BaseUINotificationStrategy;
.super Ljava/lang/Object;
.source "BaseUINotificationStrategy.java"

# interfaces
.implements Lio/boxcar/push/ui/BXCNotificationStrategy;


# static fields
.field protected static final k:[J


# instance fields
.field protected a:I

.field protected b:Landroid/graphics/Bitmap;

.field protected c:Z

.field protected d:Ljava/lang/String;

.field protected e:Z

.field protected f:Z

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->k:[J

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

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->b:Landroid/graphics/Bitmap;

    .line 23
    iput-boolean v0, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->c:Z

    .line 25
    iput-boolean v0, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->e:Z

    .line 26
    iput-boolean v0, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->f:Z

    .line 27
    const v0, -0xff01

    iput v0, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->g:I

    .line 28
    const/16 v0, 0x12c

    iput v0, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->h:I

    .line 29
    const/16 v0, 0x3e8

    iput v0, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->i:I

    .line 30
    iput-object v1, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->j:[J

    return-void
.end method

.method protected static a(Lio/boxcar/push/model/BXCNotification;)Ljava/lang/String;
    .locals 4
    .parameter "notification"

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 118
    .local v1, url:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lio/boxcar/push/BXCFacade;->buildUrl(Lio/boxcar/push/model/BXCNotification;)Ljava/lang/String;
    :try_end_0
    .catch Lio/boxcar/push/BXCException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Lio/boxcar/push/BXCException;
    const-string v2, "BXCF"

    const-string v3, "MultipleUINotification: Error extracting url from notification"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 7
    .parameter "context"
    .parameter "notification"
    .parameter "when"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 130
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    .local v0, notifyBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
    iget-boolean v3, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->c:Z

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {p2}, Lio/boxcar/push/model/BXCNotification;->getBadge()I

    move-result v2

    .line 135
    .local v2, unread:I
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 137
    .end local v2           #unread:I
    :cond_0
    iget-object v3, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 138
    invoke-virtual {p2}, Lio/boxcar/push/model/BXCNotification;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 140
    iget v3, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->a:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 141
    iget-object v3, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->b:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 142
    iget-object v3, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 144
    :cond_1
    invoke-virtual {v0, p3, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 145
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 147
    iget-boolean v3, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->f:Z

    if-eqz v3, :cond_4

    .line 148
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 149
    iget v3, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->g:I

    iget v4, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->h:I

    iget v5, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->i:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 154
    :goto_0
    iget-boolean v3, p0, Lio/boxcar/push/ui/BaseUINotificationStrategy;->e:Z

    if-eqz v3, :cond_2

    .line 155
    sget-object v3, Lio/boxcar/push/ui/BaseUINotificationStrategy;->k:[J

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 160
    :cond_2
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 162
    invoke-virtual {p2}, Lio/boxcar/push/model/BXCNotification;->getSound()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 164
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 166
    .local v1, soundUri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 169
    .end local v1           #soundUri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v0, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 171
    return-object v0

    .line 151
    :cond_4
    const v3, 0xffffff

    invoke-virtual {v0, v3, v4, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method protected abstract a(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;)V
.end method

.method public handleNotification(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;)V
    .locals 0
    .parameter "context"
    .parameter "notification"

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lio/boxcar/push/ui/BaseUINotificationStrategy;->a(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;)V

    .line 38
    return-void
.end method
