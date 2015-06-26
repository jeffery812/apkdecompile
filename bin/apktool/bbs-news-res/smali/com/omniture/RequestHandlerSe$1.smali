.class Lcom/omniture/RequestHandlerSe$1;
.super Ljava/lang/Object;
.source "RequestHandlerSe.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/omniture/RequestHandlerSe;->requestConnect(Ljava/lang/String;)Ljava/net/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/omniture/RequestHandlerSe;


# direct methods
.method constructor <init>(Lcom/omniture/RequestHandlerSe;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/omniture/RequestHandlerSe$1;->this$0:Lcom/omniture/RequestHandlerSe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .parameter "hostname"
    .parameter "session"

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method
