.class public Lcom/lenovo/scg/camera/front/FaceData;
.super Ljava/lang/Object;
.source "FaceData.java"


# instance fields
.field public age:I

.field public mFaceRect:Landroid/graphics/Rect;

.field public mFaceRectArea:I

.field public mOrient:I

.field public sex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    .line 18
    return-void
.end method
