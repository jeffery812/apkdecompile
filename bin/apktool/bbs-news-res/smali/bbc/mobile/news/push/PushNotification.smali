.class public Lbbc/mobile/news/push/PushNotification;
.super Ljava/lang/Object;
.source "PushNotification.java"


# instance fields
.field private mArticleId:Ljava/lang/String;

.field private mArticleTitle:Ljava/lang/String;

.field private mPushId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/boxcar/push/model/BXCNotification;)V
    .locals 1
    .parameter "bxcNotification"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/push/PushNotification;->mPushId:Ljava/lang/String;

    .line 16
    const-string v0, "cid"

    invoke-virtual {p1, v0}, Lio/boxcar/push/model/BXCNotification;->getExtraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/push/PushNotification;->mArticleId:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/push/PushNotification;->mArticleTitle:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lbbc/mobile/news/push/PushNotification;->mArticleId:Ljava/lang/String;

    return-object v0
.end method

.method public getArticleTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lbbc/mobile/news/push/PushNotification;->mArticleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPushId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lbbc/mobile/news/push/PushNotification;->mPushId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2c

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/push/PushNotification;->mPushId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    const-string v1, "cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/push/PushNotification;->mArticleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/push/PushNotification;->mArticleTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    return-object v0
.end method
