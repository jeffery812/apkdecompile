.class Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;
.super Landroid/content/res/Resources;
.source "ContextWrapperEdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/ContextWrapperEdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourcesEdgeEffect"
.end annotation


# instance fields
.field private overscroll_edge:I

.field private overscroll_glow:I

.field final synthetic this$0:Lbbc/mobile/news/view/ContextWrapperEdgeEffect;


# direct methods
.method public constructor <init>(Lbbc/mobile/news/view/ContextWrapperEdgeEffect;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 40
    iput-object p1, p0, Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lbbc/mobile/news/view/ContextWrapperEdgeEffect;

    .line 41
    invoke-direct {p0, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 42
    const-string v0, "overscroll_edge"

    invoke-direct {p0, v0}, Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->getPlatformDrawableId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->overscroll_edge:I

    .line 43
    const-string v0, "overscroll_glow"

    invoke-direct {p0, v0}, Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->getPlatformDrawableId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->overscroll_glow:I

    .line 44
    return-void
.end method

.method private getPlatformDrawableId(Ljava/lang/String;)I
    .locals 8
    .parameter "internalId"

    .prologue
    .line 65
    const-string v3, "getPlatformDrawableId"

    .line 66
    .local v3, logTag:Ljava/lang/String;
    const/4 v4, 0x0

    .line 69
    .local v4, result:I
    :try_start_0
    const-string v5, "com.android.internal.R$drawable"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, androidInternal:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 71
    .local v2, idField:Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v4

    .line 90
    .end local v0           #androidInternal:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #idField:Ljava/lang/reflect/Field;
    :goto_0
    return v4

    .line 73
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "getPlatformDrawableId"

    const-string v6, "Cannot find internal resource class"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 79
    .local v1, e:Ljava/lang/NoSuchFieldException;
    const-string v5, "getPlatformDrawableId"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Internal resource id does not exist: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    .end local v1           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v1

    .line 83
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "getPlatformDrawableId"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot access internal resource id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 87
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v5, "getPlatformDrawableId"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot access internal resource id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->overscroll_edge:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->overscroll_edge:I

    if-eqz v1, :cond_2

    .line 51
    iget-object v1, p0, Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lbbc/mobile/news/view/ContextWrapperEdgeEffect;

    invoke-virtual {v1}, Lbbc/mobile/news/view/ContextWrapperEdgeEffect;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$drawable;->overscroll_edge:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 57
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 58
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    :cond_1
    return-object v0

    .line 53
    :cond_2
    iget v1, p0, Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->overscroll_glow:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->overscroll_glow:I

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lbbc/mobile/news/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lbbc/mobile/news/view/ContextWrapperEdgeEffect;

    invoke-virtual {v1}, Lbbc/mobile/news/view/ContextWrapperEdgeEffect;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$drawable;->overscroll_glow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 54
    goto :goto_0
.end method
