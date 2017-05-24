.class public final enum Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;
.super Ljava/lang/Enum;
.source "ModeBaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

.field public static final enum STATUS_BACKGROUND_BLUR:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

.field public static final enum STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

.field public static final enum STATUS_POPUP:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    const-string v1, "STATUS_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    .line 26
    new-instance v0, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    const-string v1, "STATUS_POPUP"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_POPUP:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    .line 28
    new-instance v0, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    const-string v1, "STATUS_BACKGROUND_BLUR"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_BACKGROUND_BLUR:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    sget-object v1, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_POPUP:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_BACKGROUND_BLUR:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->$VALUES:[Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->$VALUES:[Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    return-object v0
.end method
