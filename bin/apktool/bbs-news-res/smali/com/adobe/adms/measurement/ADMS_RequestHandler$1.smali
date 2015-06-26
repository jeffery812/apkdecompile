.class Lcom/adobe/adms/measurement/ADMS_RequestHandler$1;
.super Ljava/lang/Object;
.source "ADMS_RequestHandler.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/adms/measurement/ADMS_RequestHandler;->requestConnect(Ljava/lang/String;)Ljava/net/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/adms/measurement/ADMS_RequestHandler;


# direct methods
.method constructor <init>(Lcom/adobe/adms/measurement/ADMS_RequestHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_RequestHandler$1;->this$0:Lcom/adobe/adms/measurement/ADMS_RequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .parameter "hostname"
    .parameter "session"

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method
