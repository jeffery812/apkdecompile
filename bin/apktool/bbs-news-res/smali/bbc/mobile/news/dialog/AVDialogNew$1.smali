.class Lbbc/mobile/news/dialog/AVDialogNew$1;
.super Ljava/lang/Object;
.source "AVDialogNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/dialog/AVDialogNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/dialog/AVDialogNew;


# direct methods
.method constructor <init>(Lbbc/mobile/news/dialog/AVDialogNew;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/dialog/AVDialogNew$1;->this$0:Lbbc/mobile/news/dialog/AVDialogNew;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lbbc/mobile/news/R$id;->avDialogStopButton:I

    if-ne v1, v2, :cond_1

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/view/AVDialogArticleView;

    .line 236
    .local v0, articleView:Lbbc/mobile/news/view/AVDialogArticleView;
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lbbc/mobile/news/R$id;->avDialogArticleView:I

    if-ne v1, v2, :cond_2

    .line 237
    iget-object v1, p0, Lbbc/mobile/news/dialog/AVDialogNew$1;->this$0:Lbbc/mobile/news/dialog/AVDialogNew;

    iget-object v2, p0, Lbbc/mobile/news/dialog/AVDialogNew$1;->this$0:Lbbc/mobile/news/dialog/AVDialogNew;

    invoke-virtual {v2}, Lbbc/mobile/news/dialog/AVDialogNew;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lbbc/mobile/news/view/AVDialogArticleView;->getArticle()Lbbc/mobile/news/model/Article;

    move-result-object v3

    #calls: Lbbc/mobile/news/dialog/AVDialogNew;->play(Landroid/content/Context;Lbbc/mobile/news/model/Article;)V
    invoke-static {v1, v2, v3}, Lbbc/mobile/news/dialog/AVDialogNew;->access$0(Lbbc/mobile/news/dialog/AVDialogNew;Landroid/content/Context;Lbbc/mobile/news/model/Article;)V

    .line 241
    :cond_0
    :goto_1
    return-void

    .end local v0           #articleView:Lbbc/mobile/news/view/AVDialogArticleView;
    :cond_1
    move-object v0, p1

    .line 233
    check-cast v0, Lbbc/mobile/news/view/AVDialogArticleView;

    .restart local v0       #articleView:Lbbc/mobile/news/view/AVDialogArticleView;
    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lbbc/mobile/news/R$id;->avDialogStopButton:I

    if-ne v1, v2, :cond_0

    .line 239
    iget-object v1, p0, Lbbc/mobile/news/dialog/AVDialogNew$1;->this$0:Lbbc/mobile/news/dialog/AVDialogNew;

    invoke-virtual {v0}, Lbbc/mobile/news/view/AVDialogArticleView;->getArticle()Lbbc/mobile/news/model/Article;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbbc/mobile/news/dialog/AVDialogNew;->stop(Lbbc/mobile/news/model/Article;)V

    goto :goto_1
.end method
