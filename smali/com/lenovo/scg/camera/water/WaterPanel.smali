.class public abstract Lcom/lenovo/scg/camera/water/WaterPanel;
.super Ljava/lang/Object;
.source "WaterPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;
    }
.end annotation


# static fields
.field public static final NO_HINT:I = -0x1


# instance fields
.field protected mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

.field protected mParentView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public abstract drawWater(Landroid/graphics/Canvas;I)V
.end method

.method public abstract enterWaterPanel()V
.end method

.method public abstract exitWaterPanel()V
.end method

.method public abstract getDataType()Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;
.end method

.method public loadImage(II)I
    .locals 1
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    .line 53
    const/4 v0, -0x1

    return v0
.end method

.method public onCaptureStartHint()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, -0x1

    return v0
.end method

.method public setController(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V
    .locals 0
    .param p1, "controller"    # Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lenovo/scg/camera/water/WaterPanel;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    .line 86
    return-void
.end method

.method public setParentView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lenovo/scg/camera/water/WaterPanel;->mParentView:Landroid/view/ViewGroup;

    .line 90
    return-void
.end method
