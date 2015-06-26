.class final Lbbc/mobile/news/model/Personalisation$FeedState;
.super Ljava/lang/Object;
.source "Personalisation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/model/Personalisation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FeedState"
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field private static final ORDER:Ljava/lang/String; = "order"

.field private static final VISIBLE:Ljava/lang/String; = "visible"


# instance fields
.field private mId:I

.field private mOrder:I

.field private mVisible:Z


# direct methods
.method private constructor <init>(IZI)V
    .locals 0
    .parameter "id"
    .parameter "visible"
    .parameter "order"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lbbc/mobile/news/model/Personalisation$FeedState;->mId:I

    .line 114
    iput-boolean p2, p0, Lbbc/mobile/news/model/Personalisation$FeedState;->mVisible:Z

    .line 115
    iput p3, p0, Lbbc/mobile/news/model/Personalisation$FeedState;->mOrder:I

    .line 116
    return-void
.end method

.method synthetic constructor <init>(IZILbbc/mobile/news/model/Personalisation$FeedState;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lbbc/mobile/news/model/Personalisation$FeedState;-><init>(IZI)V

    return-void
.end method

.method static synthetic access$1(Lbbc/mobile/news/model/Personalisation$FeedState;)I
    .locals 1
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Lbbc/mobile/news/model/Personalisation$FeedState;->getID()I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lbbc/mobile/news/model/Personalisation$FeedState;)I
    .locals 1
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Lbbc/mobile/news/model/Personalisation$FeedState;->getOrder()I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lbbc/mobile/news/model/Personalisation$FeedState;)Z
    .locals 1
    .parameter

    .prologue
    .line 122
    invoke-direct {p0}, Lbbc/mobile/news/model/Personalisation$FeedState;->getVisibility()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lbbc/mobile/news/model/Personalisation$FeedState;)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Lbbc/mobile/news/model/Personalisation$FeedState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lorg/json/JSONObject;)Lbbc/mobile/news/model/Personalisation$FeedState;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p0}, Lbbc/mobile/news/model/Personalisation$FeedState;->fromJSONObject(Lorg/json/JSONObject;)Lbbc/mobile/news/model/Personalisation$FeedState;

    move-result-object v0

    return-object v0
.end method

.method private static final fromJSONObject(Lorg/json/JSONObject;)Lbbc/mobile/news/model/Personalisation$FeedState;
    .locals 4
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lbbc/mobile/news/model/Personalisation$FeedState;

    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "visible"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "order"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lbbc/mobile/news/model/Personalisation$FeedState;-><init>(IZI)V

    return-object v0
.end method

.method private getID()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lbbc/mobile/news/model/Personalisation$FeedState;->mId:I

    return v0
.end method

.method private getOrder()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lbbc/mobile/news/model/Personalisation$FeedState;->mOrder:I

    return v0
.end method

.method private getVisibility()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lbbc/mobile/news/model/Personalisation$FeedState;->mVisible:Z

    return v0
.end method

.method private toJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .local v0, state:Lorg/json/JSONObject;
    const-string v1, "id"

    iget v2, p0, Lbbc/mobile/news/model/Personalisation$FeedState;->mId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    const-string v1, "visible"

    iget-boolean v2, p0, Lbbc/mobile/news/model/Personalisation$FeedState;->mVisible:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 136
    const-string v1, "order"

    iget v2, p0, Lbbc/mobile/news/model/Personalisation$FeedState;->mOrder:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    return-object v0
.end method
