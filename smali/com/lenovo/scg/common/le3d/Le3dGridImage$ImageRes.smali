.class public Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;
.super Ljava/lang/Object;
.source "Le3dGridImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/le3d/Le3dGridImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageRes"
.end annotation


# instance fields
.field public bgResId:I

.field public fgResId:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "bgResId"    # I
    .param p2, "fgResId"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;->bgResId:I

    .line 48
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;->fgResId:I

    .line 49
    iput-object p3, p0, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;->text:Ljava/lang/String;

    .line 50
    return-void
.end method
