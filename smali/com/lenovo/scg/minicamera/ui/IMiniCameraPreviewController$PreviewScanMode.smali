.class public final enum Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;
.super Ljava/lang/Enum;
.source "IMiniCameraPreviewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreviewScanMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

.field public static final enum BAR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

.field public static final enum BOOK:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

.field public static final enum CD:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

.field public static final enum OCRTRANS:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

.field public static final enum QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    const-string v1, "QR"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .line 18
    new-instance v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    const-string v1, "BAR"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BAR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .line 19
    new-instance v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    const-string v1, "BOOK"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BOOK:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .line 20
    new-instance v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    const-string v1, "CD"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->CD:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .line 21
    new-instance v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    const-string v1, "OCRTRANS"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->OCRTRANS:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BAR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BOOK:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->CD:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->OCRTRANS:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->$VALUES:[Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->$VALUES:[Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {v0}, [Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    return-object v0
.end method
