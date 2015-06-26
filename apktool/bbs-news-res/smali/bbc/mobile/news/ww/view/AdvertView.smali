.class public Lbbc/mobile/news/ww/view/AdvertView;
.super Landroid/widget/LinearLayout;
.source "AdvertView.java"


# static fields
.field private static final HEIGHT_RATIO:I = 0x8


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 51
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 34
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 35
    .local v1, widthSpecSize:I
    div-int/lit8 v0, v1, 0x8

    .line 36
    .local v0, heightSpecSize:I
    invoke-virtual {p0, v1, v0}, Lbbc/mobile/news/ww/view/AdvertView;->setMeasuredDimension(II)V

    .line 37
    return-void
.end method
