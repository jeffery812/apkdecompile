.class public final Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;
    }
.end annotation


# static fields
.field private static final wh:[Ljava/lang/String;


# instance fields
.field private mC:I

.field private tC:Ljava/lang/String;

.field private vD:Ljava/lang/String;

.field private wi:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "leaderboardId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "playerId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timeSpan"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hasResult"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "rawScore"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "formattedScore"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "newBest"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "scoreTag"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->wh:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 9
    .parameter "dataHolder"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->mC:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->wi:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v7

    const/4 v0, 0x3

    if-ne v7, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/eg;->r(Z)V

    move v6, v1

    :goto_1
    if-ge v6, v7, :cond_3

    invoke-virtual {p1, v6}, Lcom/google/android/gms/common/data/DataHolder;->C(I)I

    move-result v8

    if-nez v6, :cond_0

    const-string v0, "leaderboardId"

    invoke-virtual {p1, v0, v6, v8}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->vD:Ljava/lang/String;

    const-string v0, "playerId"

    invoke-virtual {p1, v0, v6, v8}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->tC:Ljava/lang/String;

    :cond_0
    const-string v0, "hasResult"

    invoke-virtual {p1, v0, v6, v8}, Lcom/google/android/gms/common/data/DataHolder;->getBoolean(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;

    const-string v1, "rawScore"

    invoke-virtual {p1, v1, v6, v8}, Lcom/google/android/gms/common/data/DataHolder;->getLong(Ljava/lang/String;II)J

    move-result-wide v1

    const-string v3, "formattedScore"

    invoke-virtual {p1, v3, v6, v8}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scoreTag"

    invoke-virtual {p1, v4, v6, v8}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "newBest"

    invoke-virtual {p1, v5, v6, v8}, Lcom/google/android/gms/common/data/DataHolder;->getBoolean(Ljava/lang/String;II)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "timeSpan"

    invoke-virtual {p1, v1, v6, v8}, Lcom/google/android/gms/common/data/DataHolder;->getInteger(Ljava/lang/String;II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->a(Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;I)V

    :cond_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->wi:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private aH(I)Landroid/content/ContentValues;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->getScoreResult(I)Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "leaderboardId"

    iget-object v3, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->vD:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "playerId"

    iget-object v3, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->tC:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timeSpan"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v0, :cond_0

    const-string v2, "rawScore"

    iget-wide v3, v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->rawScore:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "formattedScore"

    iget-object v3, v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->formattedScore:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "scoreTag"

    iget-object v3, v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->scoreTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "newBest"

    iget-boolean v0, v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->newBest:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "hasResult"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_0
    return-object v1

    :cond_0
    const-string v0, "hasResult"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method


# virtual methods
.method public dx()Lcom/google/android/gms/common/data/DataHolder;
    .locals 3

    sget-object v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->wh:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->builder([Ljava/lang/String;)Lcom/google/android/gms/common/data/DataHolder$Builder;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->aH(I)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/data/DataHolder$Builder;->withRow(Landroid/content/ContentValues;)Lcom/google/android/gms/common/data/DataHolder$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->mC:I

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->build(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    return-object v0
.end method

.method public getLeaderboardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->vD:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->tC:Ljava/lang/String;

    return-object v0
.end method

.method public getScoreResult(I)Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;
    .locals 2
    .parameter "timeSpan"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->wi:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/google/android/gms/internal/ee;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "PlayerId"

    iget-object v2, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->tC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "StatusCode"

    iget v2, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->mC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->wi:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;

    const-string v3, "TimesSpan"

    invoke-static {v1}, Lcom/google/android/gms/internal/ge;->aG(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    const-string v3, "Result"

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ee$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
