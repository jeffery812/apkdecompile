.class public final Lcom/google/android/gms/internal/cj;
.super Ljava/lang/Object;


# instance fields
.field public final errorCode:I

.field public final fK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final fL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final fO:J

.field public final gJ:Lcom/google/android/gms/internal/cw;

.field public final gb:Lcom/google/android/gms/internal/at;

.field public final gc:Lcom/google/android/gms/internal/bc;

.field public final gd:Ljava/lang/String;

.field public final ge:Lcom/google/android/gms/internal/aw;

.field public final hA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final hr:Lcom/google/android/gms/internal/v;

.field public final hu:Ljava/lang/String;

.field public final hx:J

.field public final hy:Z

.field public final hz:J

.field public final is:Lcom/google/android/gms/internal/au;

.field public final it:Lcom/google/android/gms/internal/x;

.field public final orientation:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/cw;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/at;Lcom/google/android/gms/internal/bc;Ljava/lang/String;Lcom/google/android/gms/internal/au;Lcom/google/android/gms/internal/aw;JLcom/google/android/gms/internal/x;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/v;",
            "Lcom/google/android/gms/internal/cw;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/at;",
            "Lcom/google/android/gms/internal/bc;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/au;",
            "Lcom/google/android/gms/internal/aw;",
            "J",
            "Lcom/google/android/gms/internal/x;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cj;->hr:Lcom/google/android/gms/internal/v;

    iput-object p2, p0, Lcom/google/android/gms/internal/cj;->gJ:Lcom/google/android/gms/internal/cw;

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/cj;->fK:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/internal/cj;->errorCode:I

    if-eqz p5, :cond_1

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/cj;->fL:Ljava/util/List;

    if-eqz p6, :cond_2

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/internal/cj;->hA:Ljava/util/List;

    iput p7, p0, Lcom/google/android/gms/internal/cj;->orientation:I

    iput-wide p8, p0, Lcom/google/android/gms/internal/cj;->fO:J

    iput-object p10, p0, Lcom/google/android/gms/internal/cj;->hu:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/cj;->hy:Z

    iput-object p12, p0, Lcom/google/android/gms/internal/cj;->gb:Lcom/google/android/gms/internal/at;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/cj;->gc:Lcom/google/android/gms/internal/bc;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/cj;->gd:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/cj;->is:Lcom/google/android/gms/internal/au;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/cj;->ge:Lcom/google/android/gms/internal/aw;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/cj;->hz:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/cj;->it:Lcom/google/android/gms/internal/x;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/internal/cj;->hx:J

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method
