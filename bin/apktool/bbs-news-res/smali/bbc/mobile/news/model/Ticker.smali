.class public Lbbc/mobile/news/model/Ticker;
.super Lbbc/mobile/news/model/BaseModel;
.source "Ticker.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Ticker"

.field public static final TICKER_REQUEST:I = 0x66


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/TickerItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lbbc/mobile/news/model/BaseModel;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/model/Ticker;->items:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method public static create(Lorg/json/JSONObject;)Lbbc/mobile/news/model/Ticker;
    .locals 7
    .parameter "json"

    .prologue
    const/4 v5, 0x0

    .line 22
    if-nez p0, :cond_1

    move-object v4, v5

    .line 46
    :cond_0
    :goto_0
    return-object v4

    .line 25
    :cond_1
    new-instance v4, Lbbc/mobile/news/model/Ticker;

    invoke-direct {v4}, Lbbc/mobile/news/model/Ticker;-><init>()V

    .line 29
    .local v4, ticker:Lbbc/mobile/news/model/Ticker;
    :try_start_0
    const-string v6, "entries"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 31
    .local v1, elements:Lorg/json/JSONArray;
    if-nez v1, :cond_2

    move-object v4, v5

    .line 32
    goto :goto_0

    .line 34
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 36
    new-instance v3, Lbbc/mobile/news/model/TickerItem;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v3, v6}, Lbbc/mobile/news/model/TickerItem;-><init>(Lorg/json/JSONObject;)V

    .line 37
    .local v3, ti:Lbbc/mobile/news/model/TickerItem;
    iget-object v6, v4, Lbbc/mobile/news/model/Ticker;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 42
    .end local v1           #elements:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #ti:Lbbc/mobile/news/model/TickerItem;
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v5

    .line 46
    goto :goto_0
.end method


# virtual methods
.method public addItem(Lbbc/mobile/news/model/TickerItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 66
    iget-object v0, p0, Lbbc/mobile/news/model/Ticker;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 73
    return-void
.end method

.method public getItem(I)Lbbc/mobile/news/model/TickerItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 56
    iget-object v0, p0, Lbbc/mobile/news/model/Ticker;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/TickerItem;

    return-object v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/TickerItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lbbc/mobile/news/model/Ticker;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbbc/mobile/news/model/Ticker;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
