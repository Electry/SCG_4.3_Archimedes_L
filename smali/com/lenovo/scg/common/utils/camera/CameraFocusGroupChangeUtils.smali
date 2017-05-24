.class public Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils;
.super Ljava/lang/Object;
.source "CameraFocusGroupChangeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils$onFocusGroupListener;
    }
.end annotation


# static fields
.field private static mFocusGroupListener:Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils$onFocusGroupListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils;->mFocusGroupListener:Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils$onFocusGroupListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static onFocusGroupChanged(Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;)V
    .locals 1
    .param p0, "focusgroup"    # Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
    .param p1, "preview"    # Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;
    .param p2, "shutter"    # Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;
    .param p3, "touch"    # Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    .prologue
    .line 38
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils;->mFocusGroupListener:Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils$onFocusGroupListener;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils;->mFocusGroupListener:Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils$onFocusGroupListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils$onFocusGroupListener;->onFocusGroupChanged(Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;)V

    .line 41
    :cond_0
    return-void
.end method

.method public static setFocusGroupListener(Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils$onFocusGroupListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils$onFocusGroupListener;

    .prologue
    .line 26
    sput-object p0, Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils;->mFocusGroupListener:Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils$onFocusGroupListener;

    .line 27
    return-void
.end method
