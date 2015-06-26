.class public Lbbc/mobile/news/view/NewsViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "NewsViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbbc/mobile/news/view/NewsViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    new-instance v0, Lbbc/mobile/news/view/ContextWrapperEdgeEffect;

    invoke-direct {v0, p1}, Lbbc/mobile/news/view/ContextWrapperEdgeEffect;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method
