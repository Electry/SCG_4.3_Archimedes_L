.class public final enum Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;
.super Ljava/lang/Enum;
.source "EffectColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/le3deffect/EffectColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LeColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

.field public static final enum Color_B:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

.field public static final enum Color_G:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

.field public static final enum Color_GB:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

.field public static final enum Color_GBB:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

.field public static final enum Color_Gray:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

.field public static final enum Color_R:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

.field public static final enum Color_RB:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

.field public static final enum Color_RBB:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

.field public static final enum Color_RG:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    const-string v1, "Color_R"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_R:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    new-instance v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    const-string v1, "Color_G"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_G:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    new-instance v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    const-string v1, "Color_B"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_B:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    new-instance v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    const-string v1, "Color_GB"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_GB:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    new-instance v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    const-string v1, "Color_RB"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_RB:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    new-instance v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    const-string v1, "Color_RG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_RG:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    new-instance v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    const-string v1, "Color_RBB"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_RBB:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    new-instance v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    const-string v1, "Color_GBB"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_GBB:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    new-instance v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    const-string v1, "Color_Gray"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_Gray:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    .line 5
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    sget-object v1, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_R:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_G:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_B:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_GB:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_RB:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_RG:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_RBB:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_GBB:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->Color_Gray:Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->$VALUES:[Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->$VALUES:[Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    invoke-virtual {v0}, [Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    return-object v0
.end method
