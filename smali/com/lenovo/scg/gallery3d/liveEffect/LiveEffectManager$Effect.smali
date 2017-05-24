.class public final enum Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
.super Ljava/lang/Enum;
.source "LiveEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Effect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum BACKLIGHT:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum BAKE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum BALLOON:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum COLORFILTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum COMIC:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum COUNTRY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum DEFOCUS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum FISHEYE1:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum FLARE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum GLASS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum HIGHCONTRAST:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum INFRARED:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum KALEIDOSCOPE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum LIGHTEN:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum MINIATURE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum MIRROR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum MONO:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum MOZA:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum NATURE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum NONE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum NOSTALGY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum OVEREXPOSE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum PARTCOLOR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum PINFOCUS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum POPART:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum POSTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum PRETTY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum REDSCALE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum SELECTCOLOR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum SEPIAN:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum SOLARIZE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum STARBURST:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum STORM:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum THERMO:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum VIVID:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum WARM:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

.field public static final enum WAVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;


# instance fields
.field private effectString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 427
    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "GLASS"

    const-string v2, "ES_GLASS"

    invoke-direct {v0, v1, v4, v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->GLASS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "COMIC"

    const-string v2, "ES_COMIC"

    invoke-direct {v0, v1, v5, v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COMIC:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "PENCIL"

    const-string v2, "ES_PENCIL"

    invoke-direct {v0, v1, v6, v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "STARBURST"

    const-string v2, "ES_STARBURST"

    invoke-direct {v0, v1, v7, v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->STARBURST:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "NOSTALGY"

    const-string v2, "ES_NOSTALGY"

    invoke-direct {v0, v1, v8, v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NOSTALGY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "MIRROR"

    const/4 v2, 0x5

    const-string v3, "ES_MIRROR"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->MIRROR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "WAVE"

    const/4 v2, 0x6

    const-string v3, "ES_WAVE"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->WAVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "SOLARIZE"

    const/4 v2, 0x7

    const-string v3, "ES_SOLARIZE"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SOLARIZE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    .line 428
    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "BALLOON"

    const/16 v2, 0x8

    const-string v3, "ES_BALLOON"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->BALLOON:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "KALEIDOSCOPE"

    const/16 v2, 0x9

    const-string v3, "ES_KALEIDOSCOPE"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->KALEIDOSCOPE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "PRETTY"

    const/16 v2, 0xa

    const-string v3, "ES_PRETTY"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PRETTY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "MOZA"

    const/16 v2, 0xb

    const-string v3, "ES_MOZA"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->MOZA:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "POPART"

    const/16 v2, 0xc

    const-string v3, "ES_POPART"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->POPART:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "NATURE"

    const/16 v2, 0xd

    const-string v3, "ES_NATURE"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NATURE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    .line 429
    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "WARM"

    const/16 v2, 0xe

    const-string v3, "ES_WARM"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->WARM:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "BAKE"

    const/16 v2, 0xf

    const-string v3, "ES_BAKE"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->BAKE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "COUNTRY"

    const/16 v2, 0x10

    const-string v3, "ES_COUNTRY"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COUNTRY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "MINIATURE"

    const/16 v2, 0x11

    const-string v3, "ES_MINIATURE"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->MINIATURE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    .line 432
    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "NEGATIVE"

    const/16 v2, 0x12

    const-string v3, "ES_NEGATIVE"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "FISHEYE1"

    const/16 v2, 0x13

    const-string v3, "ES_FISHEYE1"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->FISHEYE1:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    .line 434
    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "PARTCOLOR"

    const/16 v2, 0x14

    const-string v3, "ES_PARTCOLOR"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PARTCOLOR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "VIVID"

    const/16 v2, 0x15

    const-string v3, "ES_VIVID"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->VIVID:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "REDSCALE"

    const/16 v2, 0x16

    const-string v3, "ES_REDSCALE"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->REDSCALE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "SEPIAN"

    const/16 v2, 0x17

    const-string v3, "ES_SEPIAN"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SEPIAN:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "INFRARED"

    const/16 v2, 0x18

    const-string v3, "ES_INFRARED"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->INFRARED:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "THERMO"

    const/16 v2, 0x19

    const-string v3, "ES_THERMO"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->THERMO:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "COLORFILTER"

    const/16 v2, 0x1a

    const-string v3, "ES_COLORFILTER"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COLORFILTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    .line 435
    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "HIGHCONTRAST"

    const/16 v2, 0x1b

    const-string v3, "ES_HIGHCONTRAST"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->HIGHCONTRAST:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "LIGHTEN"

    const/16 v2, 0x1c

    const-string v3, "ES_LIGHTEN"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->LIGHTEN:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "POSTER"

    const/16 v2, 0x1d

    const-string v3, "ES_POSTER"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->POSTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "STORM"

    const/16 v2, 0x1e

    const-string v3, "ES_STORM"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->STORM:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "OVEREXPOSE"

    const/16 v2, 0x1f

    const-string v3, "ES_OVEREXPOSE"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->OVEREXPOSE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "BACKLIGHT"

    const/16 v2, 0x20

    const-string v3, "ES_BACKLIGHT"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->BACKLIGHT:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    .line 436
    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "PINFOCUS"

    const/16 v2, 0x21

    const-string v3, "ES_PINFOCUS"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PINFOCUS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "DEFOCUS"

    const/16 v2, 0x22

    const-string v3, "ES_DEFOCUS"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->DEFOCUS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "SELECTCOLOR"

    const/16 v2, 0x23

    const-string v3, "ES_SELECTCOLOR"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SELECTCOLOR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "MONO"

    const/16 v2, 0x24

    const-string v3, "ES_MONO"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->MONO:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "FLARE"

    const/16 v2, 0x25

    const-string v3, "ES_FLARE"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->FLARE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    .line 438
    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    const-string v1, "NONE"

    const/16 v2, 0x26

    const-string v3, "ES_NONE"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NONE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    .line 426
    const/16 v0, 0x27

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->GLASS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COMIC:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->STARBURST:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NOSTALGY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->MIRROR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->WAVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SOLARIZE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->BALLOON:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->KALEIDOSCOPE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PRETTY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->MOZA:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->POPART:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NATURE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->WARM:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->BAKE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COUNTRY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->MINIATURE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->FISHEYE1:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PARTCOLOR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->VIVID:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->REDSCALE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SEPIAN:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->INFRARED:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->THERMO:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COLORFILTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->HIGHCONTRAST:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->LIGHTEN:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->POSTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->STORM:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->OVEREXPOSE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->BACKLIGHT:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PINFOCUS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->DEFOCUS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SELECTCOLOR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->MONO:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->FLARE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NONE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->$VALUES:[Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "effectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 448
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 449
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->effectString:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public static getIndexByKey(Ljava/lang/String;)I
    .locals 6
    .param p0, "effectKey"    # Ljava/lang/String;

    .prologue
    .line 462
    const/4 v2, 0x0

    .line 463
    .local v2, "i":I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->values()[Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    move-result-object v0

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 464
    .local v1, "eff":Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 467
    .end local v1    # "eff":Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 465
    .restart local v1    # "eff":Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 463
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 467
    .end local v1    # "eff":Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getStringByIndex(I)Ljava/lang/String;
    .locals 6
    .param p0, "index"    # I

    .prologue
    .line 484
    const/4 v2, 0x0

    .line 485
    .local v2, "i":I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->values()[Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    move-result-object v0

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 486
    .local v1, "eff":Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    if-ne v2, p0, :cond_0

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v5

    .line 489
    .end local v1    # "eff":Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    :goto_1
    return-object v5

    .line 487
    .restart local v1    # "eff":Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 485
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 489
    .end local v1    # "eff":Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    :cond_1
    const-string v5, ""

    goto :goto_1
.end method

.method public static toValueOfString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    .locals 5
    .param p0, "effectName"    # Ljava/lang/String;

    .prologue
    .line 477
    invoke-static {}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->values()[Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    move-result-object v0

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 478
    .local v1, "eff":Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 480
    .end local v1    # "eff":Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    :goto_1
    return-object v1

    .line 477
    .restart local v1    # "eff":Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    .end local v1    # "eff":Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    :cond_1
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NONE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 426
    const-class v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    .locals 1

    .prologue
    .line 426
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->$VALUES:[Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->effectString:Ljava/lang/String;

    return-object v0
.end method
