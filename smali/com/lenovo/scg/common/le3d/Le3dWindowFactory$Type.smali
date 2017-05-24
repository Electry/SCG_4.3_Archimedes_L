.class public final enum Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
.super Ljava/lang/Enum;
.source "Le3dWindowFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/le3d/Le3dWindowFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

.field public static final enum LE3D_CAMERA_SPECIAL_EFFECT:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

.field public static final enum LE3D_GOLDBOX_WINDOW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

.field public static final enum LE3D_SHOW_AUTO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

.field public static final enum LE3D_SHOW_PRO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

.field public static final enum LE3D_SWITCH_AUTO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

.field public static final enum LE3D_SWITCH_PRO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

.field public static final enum LE3D_TUTORIAL_WINDOW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    const-string v1, "LE3D_GOLDBOX_WINDOW"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_GOLDBOX_WINDOW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    const-string v1, "LE3D_SWITCH_AUTO_MODE_VIEW"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SWITCH_AUTO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    const-string v1, "LE3D_SWITCH_PRO_MODE_VIEW"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SWITCH_PRO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    const-string v1, "LE3D_SHOW_AUTO_MODE_VIEW"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SHOW_AUTO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .line 14
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    const-string v1, "LE3D_SHOW_PRO_MODE_VIEW"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SHOW_PRO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    const-string v1, "LE3D_CAMERA_SPECIAL_EFFECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_CAMERA_SPECIAL_EFFECT:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    const-string v1, "LE3D_TUTORIAL_WINDOW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_TUTORIAL_WINDOW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .line 12
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_GOLDBOX_WINDOW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SWITCH_AUTO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SWITCH_PRO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SHOW_AUTO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SHOW_PRO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_CAMERA_SPECIAL_EFFECT:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_TUTORIAL_WINDOW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->$VALUES:[Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->$VALUES:[Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v0}, [Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    return-object v0
.end method
