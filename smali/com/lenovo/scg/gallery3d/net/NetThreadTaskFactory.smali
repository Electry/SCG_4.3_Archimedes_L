.class Lcom/lenovo/scg/gallery3d/net/NetThreadTaskFactory;
.super Ljava/lang/Object;
.source "NetThreadTaskFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/net/NetThreadTaskFactory$1;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static createInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Landroid/content/Context;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    .locals 3
    .param p0, "taskType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    .prologue
    .line 12
    const/4 v0, 0x0

    .line 13
    .local v0, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskFactory$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumTaskType:[I

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 40
    :goto_0
    :pswitch_0
    return-object v0

    .line 15
    :pswitch_1
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;

    .end local v0    # "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    invoke-direct {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)V

    .line 16
    .restart local v0    # "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    goto :goto_0

    .line 18
    :pswitch_2
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;

    .end local v0    # "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    invoke-direct {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)V

    .line 19
    .restart local v0    # "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    goto :goto_0

    .line 34
    :pswitch_3
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;

    .end local v0    # "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    invoke-direct {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)V

    .line 35
    .restart local v0    # "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    goto :goto_0

    .line 13
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
