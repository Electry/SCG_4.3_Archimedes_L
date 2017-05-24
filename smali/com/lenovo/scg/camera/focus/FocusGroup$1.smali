.class final Lcom/lenovo/scg/camera/focus/FocusGroup$1;
.super Ljava/util/HashMap;
.source "FocusGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/FocusGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 131
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Continuous:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    const-string v1, "continuous-picture"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroup$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Continuous_Video:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    const-string v1, "continuous-video"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroup$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Lock:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    const-string v1, "auto"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroup$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Infinity:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    const-string v1, "infinity"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroup$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method
