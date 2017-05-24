.class final Lcom/lenovo/scg/camera/focus/FocusGroupFactory$3;
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
        "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 106
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->SM_Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->SM_Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Multi_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->SM_Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Pro:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->SM_Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Simple:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->SM_Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Touch_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->SM_Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->SM_Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Infinity:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->SM_Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method
