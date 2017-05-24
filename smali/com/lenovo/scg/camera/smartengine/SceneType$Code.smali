.class public Lcom/lenovo/scg/camera/smartengine/SceneType$Code;
.super Lcom/lenovo/scg/camera/smartengine/SceneType$Type;
.source "SceneType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/smartengine/SceneType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Code"
.end annotation


# static fields
.field public static final TYPE_BARCODE:I = 0x1

.field public static final TYPE_QRCODE:I = 0x2


# instance fields
.field qrCoordPositions:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

.field final synthetic this$0:Lcom/lenovo/scg/camera/smartengine/SceneType;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/smartengine/SceneType;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SceneType$Code;->this$0:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/smartengine/SceneType$Type;-><init>(Lcom/lenovo/scg/camera/smartengine/SceneType;)V

    return-void
.end method


# virtual methods
.method public getQrCoordPositions()[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType$Code;->qrCoordPositions:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    return-object v0
.end method
