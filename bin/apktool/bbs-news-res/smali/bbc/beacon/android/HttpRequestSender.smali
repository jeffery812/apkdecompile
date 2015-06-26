.class public Lbbc/beacon/android/HttpRequestSender;
.super Ljava/lang/Object;
.source "HttpRequestSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/beacon/android/HttpRequestSender$HttpGETTask;
    }
.end annotation


# instance fields
.field private userAgentString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "userAgentString"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lbbc/beacon/android/HttpRequestSender;->userAgentString:Ljava/lang/String;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lbbc/beacon/android/HttpRequestSender;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lbbc/beacon/android/HttpRequestSender;->userAgentString:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lbbc/beacon/android/HttpRequestSender;->newHttpGetTask(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method newHttpGetTask(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 19
    const-string v0, "iStats-johnny"

    invoke-static {v0, p1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lbbc/beacon/android/HttpRequestSender$HttpGETTask;

    invoke-direct {v0, p0}, Lbbc/beacon/android/HttpRequestSender$HttpGETTask;-><init>(Lbbc/beacon/android/HttpRequestSender;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lbbc/beacon/android/HttpRequestSender$HttpGETTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 21
    return-void
.end method
