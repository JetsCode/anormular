<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns="http://7kingdoms.ru"
                version="2.0">

   <xsl:output omit-xml-declaration="yes" method="html"/>
   <xsl:template match="text()"/>

   <xsl:template match="ns:someone">
      <input id="html-form-version"
       name="html-form-version"
       value="2.0"
                     type="hidden"/>
      <input id="xmlns:ns"
       name="xmlns:ns"
       value="http://7kingdoms.ru"
                     type="hidden"/>

      <fieldset>
         <legend>Тестовый нормативный запрос</legend>
         <table>
            <tr>
               <td>
                  Имя:
                  <span style="color: red;">*</span>
               </td>
               <td>
                  <xsl:variable name="vrb" select="ns:firstName"/>

                  <input id="/ns:someone/firstName"
       name="/ns:someone/firstName"
       value="{$vrb}"
       class="need-block required "
              type="text"/>
               </td>
            </tr>
            <tr>
               <td>
                  Фамилия:
                  <span style="color: red;">*</span>
               </td>
               <td>
                  <xsl:variable name="vrb" select="ns:lastName"/>

                  <input id="/ns:someone/lastName"
       name="/ns:someone/lastName"
       value="{$vrb}"
       class="need-block required "
              type="text"/>
               </td>
            </tr>
            <tr>
               <td>
                  Возраст:
                  <span style="color: red;">*</span>
               </td>
               <td>
                  <xsl:variable name="vrb" select="ns:age"/>

                  <input id="/ns:someone/age"
       name="/ns:someone/age"
       value="{$vrb}"
       class="need-block required "
              type="text"/>
               </td>
            </tr>
            <tr>
               <td>
                  Дата рождения:
                  <span style="color: red;">*</span>
               </td>
               <td>
                  <xsl:variable name="vrb" select="ns:dateBorn"/>

                  <input id="/ns:someone/dateBorn"
       name="/ns:someone/dateBorn"
       value="{$vrb}"
       class="need-block required "
              type="text"/>
               </td>
            </tr>
            <tr>
               <td>
                  Девиз:
                  <span style="color: red;">*</span>
               </td>
               <td>
                  <xsl:variable name="vrb" select="ns:title"/>

                  <input id="/ns:someone/title"
       name="/ns:someone/title"
       value="{$vrb}"
       class="need-block required "
              type="text"/>
               </td>
            </tr>
         </table>
      </fieldset>
   </xsl:template>
</xsl:stylesheet>