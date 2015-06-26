.class public Lbbc/mobile/news/model/Personalisation;
.super Ljava/lang/Object;
.source "Personalisation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/model/Personalisation$FeedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOrder:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lbbc/mobile/news/model/Personalisation$FeedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lbbc/mobile/news/model/Personalisation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/model/Personalisation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Feed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, feeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Feed;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lbbc/mobile/news/model/Personalisation;->mOrder:Landroid/util/SparseArray;

    .line 21
    const/4 v2, 0x0

    .line 23
    .local v2, orderIndex:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 34
    return-void

    .line 23
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Feed;

    .line 25
    .local v0, feed:Lbbc/mobile/news/model/Feed;
    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->isDefault()Z

    move-result v1

    .line 27
    .local v1, isVisible:Z
    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->isVisibilitySet()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 28
    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->isVisible()Z

    move-result v1

    .line 31
    :cond_1
    iget-object v4, p0, Lbbc/mobile/news/model/Personalisation;->mOrder:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->getId()I

    move-result v5

    new-instance v6, Lbbc/mobile/news/model/Personalisation$FeedState;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->getId()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v1, v2, v8}, Lbbc/mobile/news/model/Personalisation$FeedState;-><init>(IZILbbc/mobile/news/model/Personalisation$FeedState;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public constructor <init>([Lbbc/mobile/news/model/Personalisation$FeedState;)V
    .locals 4
    .parameter "states"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lbbc/mobile/news/model/Personalisation;->mOrder:Landroid/util/SparseArray;

    .line 38
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 40
    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Lbbc/mobile/news/model/Personalisation;->mOrder:Landroid/util/SparseArray;

    aget-object v2, p1, v0

    #calls: Lbbc/mobile/news/model/Personalisation$FeedState;->getID()I
    invoke-static {v2}, Lbbc/mobile/news/model/Personalisation$FeedState;->access$1(Lbbc/mobile/news/model/Personalisation$FeedState;)I

    move-result v2

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final fromJSONArray(Lorg/json/JSONArray;)Lbbc/mobile/news/model/Personalisation;
    .locals 3
    .parameter "jsonArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v0, v2, [Lbbc/mobile/news/model/Personalisation$FeedState;

    .line 95
    .local v0, states:[Lbbc/mobile/news/model/Personalisation$FeedState;
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 99
    new-instance v2, Lbbc/mobile/news/model/Personalisation;

    invoke-direct {v2, v0}, Lbbc/mobile/news/model/Personalisation;-><init>([Lbbc/mobile/news/model/Personalisation$FeedState;)V

    return-object v2

    .line 96
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    #calls: Lbbc/mobile/news/model/Personalisation$FeedState;->fromJSONObject(Lorg/json/JSONObject;)Lbbc/mobile/news/model/Personalisation$FeedState;
    invoke-static {v2}, Lbbc/mobile/news/model/Personalisation$FeedState;->access$5(Lorg/json/JSONObject;)Lbbc/mobile/news/model/Personalisation$FeedState;

    move-result-object v2

    aput-object v2, v0, v1

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkForNewFeed(Lbbc/mobile/news/model/Feed;I)V
    .locals 5
    .parameter "feed"
    .parameter "order"

    .prologue
    .line 49
    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->getId()I

    move-result v1

    .line 51
    .local v1, id:I
    iget-object v2, p0, Lbbc/mobile/news/model/Personalisation;->mOrder:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Personalisation$FeedState;

    .line 53
    .local v0, fs:Lbbc/mobile/news/model/Personalisation$FeedState;
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lbbc/mobile/news/model/Personalisation$FeedState;

    .end local v0           #fs:Lbbc/mobile/news/model/Personalisation$FeedState;
    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->getId()I

    move-result v2

    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->isDefault()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, p2, v4}, Lbbc/mobile/news/model/Personalisation$FeedState;-><init>(IZILbbc/mobile/news/model/Personalisation$FeedState;)V

    .line 56
    .restart local v0       #fs:Lbbc/mobile/news/model/Personalisation$FeedState;
    iget-object v2, p0, Lbbc/mobile/news/model/Personalisation;->mOrder:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    :cond_0
    return-void
.end method

.method public getFeedOrderIndex(Lbbc/mobile/news/model/Feed;)I
    .locals 2
    .parameter "feed"

    .prologue
    .line 44
    iget-object v0, p0, Lbbc/mobile/news/model/Personalisation;->mOrder:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Personalisation$FeedState;

    #calls: Lbbc/mobile/news/model/Personalisation$FeedState;->getOrder()I
    invoke-static {v0}, Lbbc/mobile/news/model/Personalisation$FeedState;->access$2(Lbbc/mobile/news/model/Personalisation$FeedState;)I

    move-result v0

    return v0
.end method

.method public getFeedVisibility(Lbbc/mobile/news/model/Feed;)Z
    .locals 4
    .parameter "feed"

    .prologue
    .line 62
    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->getId()I

    move-result v1

    .line 64
    .local v1, id:I
    iget-object v3, p0, Lbbc/mobile/news/model/Personalisation;->mOrder:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Personalisation$FeedState;

    .line 66
    .local v0, fs:Lbbc/mobile/news/model/Personalisation$FeedState;
    const/4 v2, 0x0

    .line 68
    .local v2, visibility:Z
    if-eqz v0, :cond_0

    .line 70
    #calls: Lbbc/mobile/news/model/Personalisation$FeedState;->getVisibility()Z
    invoke-static {v0}, Lbbc/mobile/news/model/Personalisation$FeedState;->access$3(Lbbc/mobile/news/model/Personalisation$FeedState;)Z

    move-result v2

    .line 73
    :cond_0
    return v2
.end method

.method public toJSONArray()Lorg/json/JSONArray;
    .locals 5

    .prologue
    .line 78
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 79
    .local v0, feedStates:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lbbc/mobile/news/model/Personalisation;->mOrder:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 88
    return-object v0

    .line 81
    :cond_0
    :try_start_0
    iget-object v3, p0, Lbbc/mobile/news/model/Personalisation;->mOrder:Landroid/util/SparseArray;

    iget-object v4, p0, Lbbc/mobile/news/model/Personalisation;->mOrder:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbbc/mobile/news/model/Personalisation$FeedState;

    #calls: Lbbc/mobile/news/model/Personalisation$FeedState;->toJSONObject()Lorg/json/JSONObject;
    invoke-static {v3}, Lbbc/mobile/news/model/Personalisation$FeedState;->access$4(Lbbc/mobile/news/model/Personalisation$FeedState;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, jsonException:Lorg/json/JSONException;
    sget-object v3, Lbbc/mobile/news/model/Personalisation;->TAG:Ljava/lang/String;

    const-string v4, "Could not convert feed state to JSON Object"

    invoke-static {v3, v4, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
