.class final Lcom/lenovo/scg/camera/focus/FocusGroupFactory$4;
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
        "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 123
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->TM_Focus:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->TM_Focus:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Multi_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->TM_DO_NOTHING:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Pro:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->TM_Lock:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Simple:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->TM_Focus:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Touch_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->TM_DO_NOTHING:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->TM_Focus:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Infinity:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->TM_DO_NOTHING:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method
