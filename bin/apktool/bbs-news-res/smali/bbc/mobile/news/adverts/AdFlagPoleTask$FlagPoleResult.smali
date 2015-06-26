.class public Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;
.super Ljava/lang/Object;
.source "AdFlagPoleTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/adverts/AdFlagPoleTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlagPoleResult"
.end annotation


# instance fields
.field private adsEnabled:Z

.field private requestSucessful:Z

.field final synthetic this$0:Lbbc/mobile/news/adverts/AdFlagPoleTask;


# direct methods
.method public constructor <init>(Lbbc/mobile/news/adverts/AdFlagPoleTask;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 98
    iput-object p1, p0, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->this$0:Lbbc/mobile/news/adverts/AdFlagPoleTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v0, p0, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->requestSucessful:Z

    .line 101
    iput-boolean v0, p0, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->adsEnabled:Z

    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->adsEnabled:Z

    return-void
.end method

.method static synthetic access$1(Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-boolean p1, p0, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->requestSucessful:Z

    return-void
.end method

.method static synthetic access$2(Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->adsEnabled:Z

    return v0
.end method

.method static synthetic access$3(Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;)Z
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-boolean v0, p0, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->requestSucessful:Z

    return v0
.end method
