.class final Lcom/lenovo/scg/camera/focus/FocusGroupFactory$2;
.super Ljava/util/HashMap;
.source "FocusGroupFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/FocusGroupFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;",
        "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 89
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Continuous:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Continuous:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Multi_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Infinity:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Pro:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Continuous:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Simple:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Continuous:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Touch_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Continuous:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Continuous_Video:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Infinity:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Infinity:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method
