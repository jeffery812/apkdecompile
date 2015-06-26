.class public Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/moments/ItemScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private AI:Ljava/lang/String;

.field private EA:Lcom/google/android/gms/internal/ib;

.field private EB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ib;",
            ">;"
        }
    .end annotation
.end field

.field private EC:Ljava/lang/String;

.field private ED:Ljava/lang/String;

.field private EE:Lcom/google/android/gms/internal/ib;

.field private EF:Ljava/lang/String;

.field private EG:Ljava/lang/String;

.field private EH:Ljava/lang/String;

.field private EI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ib;",
            ">;"
        }
    .end annotation
.end field

.field private EJ:Ljava/lang/String;

.field private EK:Ljava/lang/String;

.field private EL:Ljava/lang/String;

.field private EM:Ljava/lang/String;

.field private EN:Ljava/lang/String;

.field private EO:Ljava/lang/String;

.field private EP:Ljava/lang/String;

.field private EQ:Ljava/lang/String;

.field private ER:Lcom/google/android/gms/internal/ib;

.field private ES:Ljava/lang/String;

.field private ET:Ljava/lang/String;

.field private EU:Ljava/lang/String;

.field private EV:Lcom/google/android/gms/internal/ib;

.field private EW:Lcom/google/android/gms/internal/ib;

.field private EX:Lcom/google/android/gms/internal/ib;

.field private EY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ib;",
            ">;"
        }
    .end annotation
.end field

.field private EZ:Ljava/lang/String;

.field private final Eq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Er:Lcom/google/android/gms/internal/ib;

.field private Es:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Et:Lcom/google/android/gms/internal/ib;

.field private Eu:Ljava/lang/String;

.field private Ev:Ljava/lang/String;

.field private Ew:Ljava/lang/String;

.field private Ex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ib;",
            ">;"
        }
    .end annotation
.end field

.field private Ey:I

.field private Ez:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ib;",
            ">;"
        }
    .end annotation
.end field

.field private Fa:Ljava/lang/String;

.field private Fb:Ljava/lang/String;

.field private Fc:Ljava/lang/String;

.field private Fd:Lcom/google/android/gms/internal/ib;

.field private Fe:Ljava/lang/String;

.field private Ff:Ljava/lang/String;

.field private Fg:Ljava/lang/String;

.field private Fh:Lcom/google/android/gms/internal/ib;

.field private Fi:Ljava/lang/String;

.field private Fj:Ljava/lang/String;

.field private Fk:Ljava/lang/String;

.field private Fl:Ljava/lang/String;

.field private iH:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private sJ:Ljava/lang/String;

.field private uS:Ljava/lang/String;

.field private xw:D

.field private xx:D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 60

    new-instance v2, Lcom/google/android/gms/internal/ib;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Er:Lcom/google/android/gms/internal/ib;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Es:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Et:Lcom/google/android/gms/internal/ib;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eu:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Ev:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Ew:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Ex:Ljava/util/List;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Ey:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Ez:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EA:Lcom/google/android/gms/internal/ib;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EB:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EC:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ED:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EE:Lcom/google/android/gms/internal/ib;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EF:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EG:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EH:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EI:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EJ:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EK:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EL:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->sJ:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EM:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EN:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EO:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EP:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EQ:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ER:Lcom/google/android/gms/internal/ib;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ES:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ET:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->uS:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EU:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EV:Lcom/google/android/gms/internal/ib;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->xw:D

    move-wide/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EW:Lcom/google/android/gms/internal/ib;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->xx:D

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->mName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EX:Lcom/google/android/gms/internal/ib;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EY:Ljava/util/List;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EZ:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fa:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fb:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fc:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fd:Lcom/google/android/gms/internal/ib;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fe:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Ff:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fg:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fh:Lcom/google/android/gms/internal/ib;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fi:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fj:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->AI:Ljava/lang/String;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->iH:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fk:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fl:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-direct/range {v2 .. v59}, Lcom/google/android/gms/internal/ib;-><init>(Ljava/util/Set;Lcom/google/android/gms/internal/ib;Ljava/util/List;Lcom/google/android/gms/internal/ib;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Lcom/google/android/gms/internal/ib;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ib;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ib;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ib;DLcom/google/android/gms/internal/ib;DLjava/lang/String;Lcom/google/android/gms/internal/ib;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ib;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ib;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public setAbout(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "about"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/ib;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Er:Lcom/google/android/gms/internal/ib;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAdditionalName(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    .prologue
    .local p1, additionalName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Es:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAddress(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "address"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/ib;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Et:Lcom/google/android/gms/internal/ib;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAddressCountry(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "addressCountry"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eu:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAddressLocality(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "addressLocality"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Ev:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAddressRegion(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "addressRegion"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Ew:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAssociated_media(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    .prologue
    .local p1, associated_media:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/plus/model/moments/ItemScope;>;"
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Ex:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAttendeeCount(I)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "attendeeCount"

    .prologue
    iput p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Ey:I

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAttendees(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    .prologue
    .local p1, attendees:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/plus/model/moments/ItemScope;>;"
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Ez:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAudio(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "audio"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/ib;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EA:Lcom/google/android/gms/internal/ib;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAuthor(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    .prologue
    .local p1, author:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/plus/model/moments/ItemScope;>;"
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EB:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setBestRating(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "bestRating"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EC:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setBirthDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "birthDate"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ED:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setByArtist(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "byArtist"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/ib;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EE:Lcom/google/android/gms/internal/ib;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setCaption(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "caption"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EF:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setContentSize(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "contentSize"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EG:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "contentUrl"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EH:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setContributor(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    .prologue
    .local p1, contributor:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/plus/model/moments/ItemScope;>;"
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EI:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDateCreated(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "dateCreated"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EJ:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDateModified(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "dateModified"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EK:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDatePublished(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "datePublished"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EL:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "description"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->sJ:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDuration(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "duration"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EM:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setEmbedUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "embedUrl"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EN:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setEndDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "endDate"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EO:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setFamilyName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "familyName"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EP:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setGender(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "gender"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EQ:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setGeo(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "geo"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/ib;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ER:Lcom/google/android/gms/internal/ib;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setGivenName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "givenName"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ES:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setHeight(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "height"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ET:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "id"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->uS:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setImage(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "image"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EU:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setInAlbum(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "inAlbum"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/ib;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EV:Lcom/google/android/gms/internal/ib;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setLatitude(D)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "latitude"

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->xw:D

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setLocation(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "location"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/ib;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EW:Lcom/google/android/gms/internal/ib;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setLongitude(D)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "longitude"

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->xx:D

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "name"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPartOfTVSeries(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "partOfTVSeries"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/ib;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EX:Lcom/google/android/gms/internal/ib;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPerformers(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    .prologue
    .local p1, performers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/plus/model/moments/ItemScope;>;"
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EY:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPlayerType(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "playerType"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->EZ:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPostOfficeBoxNumber(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "postOfficeBoxNumber"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fa:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "postalCode"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fb:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setRatingValue(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "ratingValue"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fc:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setReviewRating(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "reviewRating"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/ib;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fd:Lcom/google/android/gms/internal/ib;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setStartDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "startDate"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fe:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setStreetAddress(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "streetAddress"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Ff:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "text"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fg:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setThumbnail(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "thumbnail"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/ib;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fh:Lcom/google/android/gms/internal/ib;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "thumbnailUrl"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fi:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setTickerSymbol(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "tickerSymbol"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fj:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "type"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->AI:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "url"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->iH:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setWidth(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "width"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fk:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setWorstRating(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "worstRating"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Fl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Eq:Ljava/util/Set;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
