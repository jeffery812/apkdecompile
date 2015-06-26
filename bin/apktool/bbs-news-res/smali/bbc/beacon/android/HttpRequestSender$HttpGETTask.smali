.class Lbbc/beacon/android/HttpRequestSender$HttpGETTask;
.super Landroid/os/AsyncTask;
.source "HttpRequestSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/beacon/android/HttpRequestSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HttpGETTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/beacon/android/HttpRequestSender;


# direct methods
.method constructor <init>(Lbbc/beacon/android/HttpRequestSender;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lbbc/beacon/android/HttpRequestSender$HttpGETTask;->this$0:Lbbc/beacon/android/HttpRequestSender;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbbc/beacon/android/HttpRequestSender$HttpGETTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .parameter "urls"

    .prologue
    .line 38
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 40
    .local v1, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 41
    .local v3, url:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v4, "User-Agent"

    iget-object v5, p0, Lbbc/beacon/android/HttpRequestSender$HttpGETTask;->this$0:Lbbc/beacon/android/HttpRequestSender;

    #getter for: Lbbc/beacon/android/HttpRequestSender;->userAgentString:Ljava/lang/String;
    invoke-static {v5}, Lbbc/beacon/android/HttpRequestSender;->access$0(Lbbc/beacon/android/HttpRequestSender;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v4, "stats_ UA "

    iget-object v5, p0, Lbbc/beacon/android/HttpRequestSender$HttpGETTask;->this$0:Lbbc/beacon/android/HttpRequestSender;

    #getter for: Lbbc/beacon/android/HttpRequestSender;->userAgentString:Ljava/lang/String;
    invoke-static {v5}, Lbbc/beacon/android/HttpRequestSender;->access$0(Lbbc/beacon/android/HttpRequestSender;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v4, "stats_"

    invoke-static {v4, v3}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 33
    return-void
.end method
