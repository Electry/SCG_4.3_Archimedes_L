.class public final enum Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;
.super Ljava/lang/Enum;
.source "RemindDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

.field public static final enum GIVEUP:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

.field public static final enum LOGOUT:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

.field public static final enum MOBILE:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

.field public static final enum WIFI:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->MOBILE:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->WIFI:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    const-string v1, "LOGOUT"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->LOGOUT:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    const-string v1, "GIVEUP"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->GIVEUP:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    .line 212
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->MOBILE:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->WIFI:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->LOGOUT:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->GIVEUP:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->$VALUES:[Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

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
    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 212
    const-class v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->$VALUES:[Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    return-object v0
.end method
