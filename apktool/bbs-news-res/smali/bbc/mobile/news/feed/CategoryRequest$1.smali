.class Lbbc/mobile/news/feed/CategoryRequest$1;
.super Ljava/lang/Object;
.source "CategoryRequest.java"

# interfaces
.implements Lbbc/mobile/news/webclient/CategoryManager$CategoryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/feed/CategoryRequest;->fetch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/feed/CategoryRequest;


# direct methods
.method constructor <init>(Lbbc/mobile/news/feed/CategoryRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/feed/CategoryRequest$1;->this$0:Lbbc/mobile/news/feed/CategoryRequest;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendCategory(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Feed;)V
    .locals 2
    .parameter "category"
    .parameter "feed"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->hasArticles()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lbbc/mobile/news/feed/CategoryRequest$1;->this$0:Lbbc/mobile/news/feed/CategoryRequest;

    iget-object v1, p0, Lbbc/mobile/news/feed/CategoryRequest$1;->this$0:Lbbc/mobile/news/feed/CategoryRequest;

    invoke-virtual {v1}, Lbbc/mobile/news/feed/CategoryRequest;->getSucessFlag()I

    move-result v1

    #calls: Lbbc/mobile/news/feed/CategoryRequest;->sendResult(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lbbc/mobile/news/feed/CategoryRequest;->access$0(Lbbc/mobile/news/feed/CategoryRequest;ILjava/lang/Object;)V

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/feed/CategoryRequest$1;->this$0:Lbbc/mobile/news/feed/CategoryRequest;

    iget-object v1, p0, Lbbc/mobile/news/feed/CategoryRequest$1;->this$0:Lbbc/mobile/news/feed/CategoryRequest;

    invoke-virtual {v1}, Lbbc/mobile/news/feed/CategoryRequest;->getFailedFlag()I

    move-result v1

    #calls: Lbbc/mobile/news/feed/CategoryRequest;->sendResult(ILjava/lang/Object;)V
    invoke-static {v0, v1, p2}, Lbbc/mobile/news/feed/CategoryRequest;->access$0(Lbbc/mobile/news/feed/CategoryRequest;ILjava/lang/Object;)V

    goto :goto_0
.end method
