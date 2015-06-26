.class public Lbbc/mobile/news/view/ContextWrapperEdgeEffect;
.super Landroid/content/ContextWrapper;
.source "ContextWrapperEdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;
    }
.end annotation


# static fields
.field private static RES_EDGE_EFFECT:Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "base"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 22
    sget-object v1, Lbbc/mobile/news/view/ContextWrapperEdgeEffect;->RES_EDGE_EFFECT:Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;

    if-nez v1, :cond_0

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 24
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;-><init>(Lbbc/mobile/news/view/ContextWrapperEdgeEffect;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    sput-object v1, Lbbc/mobile/news/view/ContextWrapperEdgeEffect;->RES_EDGE_EFFECT:Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;

    .line 26
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lbbc/mobile/news/view/ContextWrapperEdgeEffect;->RES_EDGE_EFFECT:Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;

    return-object v0
.end method
