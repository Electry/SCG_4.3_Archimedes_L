.class public Lcom/lenovo/scg/gallery3d/facepretty/utils/TiltShiftExecCommand;
.super Ljava/lang/Object;
.source "TiltShiftExecCommand.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/edit/Command;


# instance fields
.field mTiltShiftParams:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;

.field private mUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;)V
    .locals 1
    .param p1, "inParams"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/TiltShiftExecCommand;->mTiltShiftParams:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/TiltShiftExecCommand;->mUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    .line 18
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/TiltShiftExecCommand;->mTiltShiftParams:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;

    .line 19
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/TiltShiftExecCommand;->mUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    .line 20
    return-void
.end method


# virtual methods
.method public execute(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method
