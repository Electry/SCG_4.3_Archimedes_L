.class final Lcom/lenovo/scg/camera/focus/FocusGroupFactory$1;
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
        "Ljava/lang/Class",
        "<+",
        "Lcom/lenovo/scg/camera/focus/FocusGroup;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 72
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    const-class v1, Lcom/lenovo/scg/camera/focus/SmartFocusGroup;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    const-class v1, Lcom/lenovo/scg/camera/focus/AutoFocusGroup;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Multi_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    const-class v1, Lcom/lenovo/scg/camera/focus/MultiPhotoFocusGroup;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Pro:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    const-class v1, Lcom/lenovo/scg/camera/focus/ProFocusGroup;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Simple:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    const-class v1, Lcom/lenovo/scg/camera/focus/SimpleFocusGroup;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Touch_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    const-class v1, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    const-class v1, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Infinity:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    const-class v1, Lcom/lenovo/scg/camera/focus/VideoInfinityFocusGroup;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method
