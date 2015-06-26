.class public Lbbc/mobile/news/view/NewsListView;
.super Landroid/widget/ListView;
.source "NewsListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    new-instance v0, Lbbc/mobile/news/view/ContextWrapperEdgeEffect;

    invoke-direct {v0, p1}, Lbbc/mobile/news/view/ContextWrapperEdgeEffect;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "style"

    .prologue
    .line 18
    new-instance v0, Lbbc/mobile/news/view/ContextWrapperEdgeEffect;

    invoke-direct {v0, p1}, Lbbc/mobile/news/view/ContextWrapperEdgeEffect;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 25
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/lang/NullPointerException;
    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Lbbc/mobile/news/view/NewsListView;->postInvalidateDelayed(J)V

    goto :goto_0
.end method
