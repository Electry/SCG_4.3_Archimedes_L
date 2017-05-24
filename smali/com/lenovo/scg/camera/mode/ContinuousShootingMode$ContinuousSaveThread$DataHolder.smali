.class Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;
.super Ljava/lang/Object;
.source "ContinuousShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataHolder"
.end annotation


# instance fields
.field public mIndex:I

.field public mJpegData:[B

.field final synthetic this$1:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;[BI)V
    .locals 0
    .param p2, "jpegData"    # [B
    .param p3, "index"    # I

    .prologue
    .line 648
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->this$1:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mJpegData:[B

    .line 650
    iput p3, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mIndex:I

    .line 651
    return-void
.end method
