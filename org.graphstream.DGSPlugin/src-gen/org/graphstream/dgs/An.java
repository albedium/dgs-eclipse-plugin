/**
 * <copyright>
 * </copyright>
 *
 */
package org.graphstream.dgs;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>An</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link org.graphstream.dgs.An#getIdNode <em>Id Node</em>}</li>
 *   <li>{@link org.graphstream.dgs.An#getAttributes <em>Attributes</em>}</li>
 * </ul>
 * </p>
 *
 * @see org.graphstream.dgs.DgsPackage#getAn()
 * @model
 * @generated
 */
public interface An extends EObject
{
  /**
   * Returns the value of the '<em><b>Id Node</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Id Node</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Id Node</em>' attribute.
   * @see #setIdNode(String)
   * @see org.graphstream.dgs.DgsPackage#getAn_IdNode()
   * @model
   * @generated
   */
  String getIdNode();

  /**
   * Sets the value of the '{@link org.graphstream.dgs.An#getIdNode <em>Id Node</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Id Node</em>' attribute.
   * @see #getIdNode()
   * @generated
   */
  void setIdNode(String value);

  /**
   * Returns the value of the '<em><b>Attributes</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Attributes</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Attributes</em>' containment reference.
   * @see #setAttributes(Attributes)
   * @see org.graphstream.dgs.DgsPackage#getAn_Attributes()
   * @model containment="true"
   * @generated
   */
  Attributes getAttributes();

  /**
   * Sets the value of the '{@link org.graphstream.dgs.An#getAttributes <em>Attributes</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Attributes</em>' containment reference.
   * @see #getAttributes()
   * @generated
   */
  void setAttributes(Attributes value);

} // An
