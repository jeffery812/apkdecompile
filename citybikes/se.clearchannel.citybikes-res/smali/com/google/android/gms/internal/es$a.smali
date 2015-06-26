.class public Lcom/google/android/gms/internal/es$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/et;


# instance fields
.field private final kg:I

.field protected final qi:I

.field protected final qj:Z

.field protected final qk:I

.field protected final ql:Z

.field protected final qm:Ljava/lang/String;

.field protected final qn:I

.field protected final qo:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/es;",
            ">;"
        }
    .end annotation
.end field

.field protected final qp:Ljava/lang/String;

.field private qq:Lcom/google/android/gms/internal/ev;

.field private qr:Lcom/google/android/gms/internal/es$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/es$b",
            "<TI;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/et;

    invoke-direct {v0}, Lcom/google/android/gms/internal/et;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/es$a;->CREATOR:Lcom/google/android/gms/internal/et;

    return-void
.end method

.method constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/en;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/es$a;->kg:I

    iput p2, p0, Lcom/google/android/gms/internal/es$a;->qi:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/es$a;->qj:Z

    iput p4, p0, Lcom/google/android/gms/internal/es$a;->qk:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/es$a;->ql:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/es$a;->qm:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/es$a;->qn:I

    if-nez p8, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/es$a;->qo:Ljava/lang/Class;

    iput-object v1, p0, Lcom/google/android/gms/internal/es$a;->qp:Ljava/lang/String;

    :goto_0
    if-nez p9, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/es$a;->qr:Lcom/google/android/gms/internal/es$b;

    :goto_1
    return-void

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/ey;

    iput-object v0, p0, Lcom/google/android/gms/internal/es$a;->qo:Ljava/lang/Class;

    iput-object p8, p0, Lcom/google/android/gms/internal/es$a;->qp:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p9}, Lcom/google/android/gms/internal/en;->cf()Lcom/google/android/gms/internal/es$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/es$a;->qr:Lcom/google/android/gms/internal/es$b;

    goto :goto_1
.end method

.method protected constructor <init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/es$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/es;",
            ">;",
            "Lcom/google/android/gms/internal/es$b",
            "<TI;TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/es$a;->kg:I

    iput p1, p0, Lcom/google/android/gms/internal/es$a;->qi:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/es$a;->qj:Z

    iput p3, p0, Lcom/google/android/gms/internal/es$a;->qk:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/es$a;->ql:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/es$a;->qm:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/es$a;->qn:I

    iput-object p7, p0, Lcom/google/android/gms/internal/es$a;->qo:Ljava/lang/Class;

    if-nez p7, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/es$a;->qp:Ljava/lang/String;

    :goto_0
    iput-object p8, p0, Lcom/google/android/gms/internal/es$a;->qr:Lcom/google/android/gms/internal/es$b;

    return-void

    :cond_0
    invoke-virtual {p7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/es$a;->qp:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILcom/google/android/gms/internal/es$b;Z)Lcom/google/android/gms/internal/es$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/es$b",
            "<**>;Z)",
            "Lcom/google/android/gms/internal/es$a;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/es$a;

    invoke-interface {p2}, Lcom/google/android/gms/internal/es$b;->ch()I

    move-result v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/es$b;->ci()I

    move-result v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v2, p3

    move-object v5, p0

    move v6, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/es$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/es$b;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/es$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/es;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/es$a",
            "<TT;TT;>;"
        }
    .end annotation

    const/16 v1, 0xb

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/es$a;

    const/4 v8, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/es$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/es$b;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/es$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/es;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/es$a",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation

    const/16 v1, 0xb

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/internal/es$a;

    const/4 v8, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/es$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/es$b;)V

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/es$a;)Lcom/google/android/gms/internal/es$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/es$a;->qr:Lcom/google/android/gms/internal/es$b;

    return-object v0
.end method

.method public static d(Ljava/lang/String;I)Lcom/google/android/gms/internal/es$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/es$a",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/es$a;

    move v2, v1

    move v3, v1

    move v4, v1

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/es$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/es$b;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;I)Lcom/google/android/gms/internal/es$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/es$a",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/es$a;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/es$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/es$b;)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;I)Lcom/google/android/gms/internal/es$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/es$a",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/es$a;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/es$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/es$b;)V

    return-object v0
.end method

.method public static g(Ljava/lang/String;I)Lcom/google/android/gms/internal/es$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/es$a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/es$a;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/es$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/es$b;)V

    return-object v0
.end method

.method public static h(Ljava/lang/String;I)Lcom/google/android/gms/internal/es$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/es$a",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/internal/es$a;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/es$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/es$b;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ev;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/es$a;->qq:Lcom/google/android/gms/internal/ev;

    return-void
.end method

.method public ch()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/es$a;->qi:I

    return v0
.end method

.method public ci()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/es$a;->qk:I

    return v0
.end method

.method public cm()Lcom/google/android/gms/internal/es$a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/es$a",
            "<TI;TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/es$a;

    iget v1, p0, Lcom/google/android/gms/internal/es$a;->kg:I

    iget v2, p0, Lcom/google/android/gms/internal/es$a;->qi:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/es$a;->qj:Z

    iget v4, p0, Lcom/google/android/gms/internal/es$a;->qk:I

    iget-boolean v5, p0, Lcom/google/android/gms/internal/es$a;->ql:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/es$a;->qm:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/gms/internal/es$a;->qn:I

    iget-object v8, p0, Lcom/google/android/gms/internal/es$a;->qp:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/es$a;->cu()Lcom/google/android/gms/internal/en;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/es$a;-><init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/en;)V

    return-object v0
.end method

.method public cn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/es$a;->qj:Z

    return v0
.end method

.method public co()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/es$a;->ql:Z

    return v0
.end method

.method public cp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/es$a;->qm:Ljava/lang/String;

    return-object v0
.end method

.method public cq()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/es$a;->qn:I

    return v0
.end method

.method public cr()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/es;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/es$a;->qo:Ljava/lang/Class;

    return-object v0
.end method

.method cs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/es$a;->qp:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/es$a;->qp:Ljava/lang/String;

    goto :goto_0
.end method

.method public ct()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/es$a;->qr:Lcom/google/android/gms/internal/es$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cu()Lcom/google/android/gms/internal/en;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/es$a;->qr:Lcom/google/android/gms/internal/es$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/es$a;->qr:Lcom/google/android/gms/internal/es$b;

    invoke-static {v0}, Lcom/google/android/gms/internal/en;->a(Lcom/google/android/gms/internal/es$b;)Lcom/google/android/gms/internal/en;

    move-result-object v0

    goto :goto_0
.end method

.method public cv()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/es$a",
            "<**>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/es$a;->qp:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/eg;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/es$a;->qq:Lcom/google/android/gms/internal/ev;

    invoke-static {v0}, Lcom/google/android/gms/internal/eg;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/es$a;->qq:Lcom/google/android/gms/internal/ev;

    iget-object v1, p0, Lcom/google/android/gms/internal/es$a;->qp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ev;->Z(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/es$a;->CREATOR:Lcom/google/android/gms/internal/et;

    const/4 v0, 0x0

    return v0
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)TI;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/es$a;->qr:Lcom/google/android/gms/internal/es$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/es$b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/es$a;->kg:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Field\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "            versionCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/es$a;->kg:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "                 typeIn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/es$a;->qi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "            typeInArray="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/es$a;->qj:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "                typeOut="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/es$a;->qk:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "           typeOutArray="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/es$a;->ql:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "        outputFieldName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/es$a;->qm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "      safeParcelFieldId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/es$a;->qn:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "       concreteTypeName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/es$a;->cs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/es$a;->cr()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "     concreteType.class="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/es$a;->cr()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "          converterName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/es$a;->qr:Lcom/google/android/gms/internal/es$b;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/es$a;->qr:Lcom/google/android/gms/internal/es$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .local p0, this:Lcom/google/android/gms/internal/es$a;,"Lcom/google/android/gms/internal/es$a<TI;TO;>;"
    sget-object v0, Lcom/google/android/gms/internal/es$a;->CREATOR:Lcom/google/android/gms/internal/et;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/et;->a(Lcom/google/android/gms/internal/es$a;Landroid/os/Parcel;I)V

    return-void
.end method
