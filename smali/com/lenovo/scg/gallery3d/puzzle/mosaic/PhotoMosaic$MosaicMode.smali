.class public final enum Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;
.super Ljava/lang/Enum;
.source "PhotoMosaic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MosaicMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

.field public static final enum FREEDOM_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

.field public static final enum JOINT_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

.field public static final enum TEMPLATE_MDOE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    const-string v1, "TEMPLATE_MDOE"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->TEMPLATE_MDOE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    new-instance v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    const-string v1, "FREEDOM_MODE"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->FREEDOM_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    new-instance v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    const-string v1, "JOINT_MODE"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->JOINT_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->TEMPLATE_MDOE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->FREEDOM_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->JOINT_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->$VALUES:[Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->$VALUES:[Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    return-object v0
.end method
