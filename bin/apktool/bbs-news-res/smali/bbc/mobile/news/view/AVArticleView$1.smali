.class Lbbc/mobile/news/view/AVArticleView$1;
.super Ljava/lang/Object;
.source "AVArticleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/AVArticleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/view/AVArticleView;


# direct methods
.method constructor <init>(Lbbc/mobile/news/view/AVArticleView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/view/AVArticleView$1;->this$0:Lbbc/mobile/news/view/AVArticleView;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 294
    .local v0, id:I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 296
    sget v1, Lbbc/mobile/news/R$id;->avArticlePlayButton:I

    if-ne v0, v1, :cond_1

    .line 297
    iget-object v1, p0, Lbbc/mobile/news/view/AVArticleView$1;->this$0:Lbbc/mobile/news/view/AVArticleView;

    #calls: Lbbc/mobile/news/view/AVArticleView;->onPlayClicked()V
    invoke-static {v1}, Lbbc/mobile/news/view/AVArticleView;->access$0(Lbbc/mobile/news/view/AVArticleView;)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    sget v1, Lbbc/mobile/news/R$id;->avArticleStopButton:I

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v1, p0, Lbbc/mobile/news/view/AVArticleView$1;->this$0:Lbbc/mobile/news/view/AVArticleView;

    #calls: Lbbc/mobile/news/view/AVArticleView;->onStopClicked()V
    invoke-static {v1}, Lbbc/mobile/news/view/AVArticleView;->access$1(Lbbc/mobile/news/view/AVArticleView;)V

    goto :goto_0
.end method
