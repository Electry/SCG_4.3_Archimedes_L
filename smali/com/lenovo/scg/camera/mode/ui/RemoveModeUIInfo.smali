.class public Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;
.super Ljava/lang/Object;
.source "RemoveModeUIInfo.java"


# instance fields
.field public isAdd:Z

.field public rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    .line 11
    return-void
.end method
