.class public final enum Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
.super Ljava/lang/Enum;
.source "Le3dLiveEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field public static final enum LE3D_Effect_Comic:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field public static final enum LE3D_Effect_CountryLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field public static final enum LE3D_Effect_FilmLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field public static final enum LE3D_Effect_Gray:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field public static final enum LE3D_Effect_Lomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field public static final enum LE3D_Effect_MapleLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field public static final enum LE3D_Effect_MemoryLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field public static final enum LE3D_Effect_Mirror:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field public static final enum LE3D_Effect_Negative:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field public static final enum LE3D_Effect_None:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field public static final enum LE3D_Effect_Sepia:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field public static final enum LE3D_Effect_Sketch:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field public static final enum LE3D_Effect_VelviaLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field public static final enum LE3D_Effect_Vignette:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field public static final enum LE3D_Effect_Whirl:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    const-string v1, "LE3D_Effect_None"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_None:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    const-string v1, "LE3D_Effect_Lomo"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Lomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 9
    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    const-string v1, "LE3D_Effect_Sepia"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Sepia:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    const-string v1, "LE3D_Effect_Negative"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Negative:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 10
    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    const-string v1, "LE3D_Effect_Gray"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Gray:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    const-string v1, "LE3D_Effect_Sketch"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Sketch:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 11
    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    const-string v1, "LE3D_Effect_Mirror"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Mirror:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    const-string v1, "LE3D_Effect_Whirl"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Whirl:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 12
    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    const-string v1, "LE3D_Effect_Comic"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Comic:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    const-string v1, "LE3D_Effect_Vignette"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Vignette:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 13
    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    const-string v1, "LE3D_Effect_MapleLomo"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_MapleLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    const-string v1, "LE3D_Effect_FilmLomo"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_FilmLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 14
    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    const-string v1, "LE3D_Effect_MemoryLomo"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_MemoryLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    const-string v1, "LE3D_Effect_CountryLomo"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_CountryLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 15
    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    const-string v1, "LE3D_Effect_VelviaLomo"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_VelviaLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 7
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    sget-object v1, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_None:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Lomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Sepia:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Negative:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Gray:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Sketch:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Mirror:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Whirl:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Comic:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Vignette:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_MapleLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_FilmLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_MemoryLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_CountryLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_VelviaLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->$VALUES:[Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->$VALUES:[Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    return-object v0
.end method
